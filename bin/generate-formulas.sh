######
# A script which updates the formulas for android
#!/bin/bash
REPO_URL="${REPO_URL:-https://dl.google.com/android/repository/repository-12.xml}"
SYSIMG_URL="${SYSIMG_URL:-https://dl.google.com/android/repository/sys-img/android/sys-img.xml}"
EXTRAS_URL="${EXTRAS_URL:-https://dl.google.com/android/repository/addon.xml}"
GAPIS_SYSIMG_URL="${GAPIS_SYSIMG_URL:-https://dl.google.com/android/repository/sys-img/google_apis/sys-img.xml}"
HAXM_URL="${HAXM_URL:-https://dl.google.com/android/repository/extras/intel/addon.xml}"

# Set up our variables
cd "$(dirname "${0}")"
BIN_DIR="$(pwd)"
XSL_DIR="${BIN_DIR}/xsl"
TEMPLATE_DIR="${BIN_DIR}/template"
cd ->/dev/null

# Set up our variables
cd "$(dirname "${0}")/../Formula"
FORMULA_DIR="$(pwd)"
cd ->/dev/null
cd "$(dirname "${0}")/../Casks"
CASKS_DIR="$(pwd)"
cd ->/dev/null

WORK_DIR="${TMPDIR}/HomebrewAndroid.$$"
mkdir -p "${WORK_DIR}"
trap 'rm -rf "${WORK_DIR}"' EXIT


REPO_FILE="${WORK_DIR}/repo.xml"
SYSIMG_FILE="${WORK_DIR}/sysimg.xml"
EXTRAS_FILE="${WORK_DIR}/extras.xml"
GAPIS_SYSIMG_FILE="${WORK_DIR}/gapis_sysimg.xml"
HAXM_FILE="${WORK_DIR}/haxm.xml"
curl -fsSL "${REPO_URL}" -o "${REPO_FILE}"                  || exit $?
curl -fsSL "${SYSIMG_URL}" -o "${SYSIMG_FILE}"              || exit $?
curl -fsSL "${EXTRAS_URL}" -o "${EXTRAS_FILE}"              || exit $?
curl -fsSL "${GAPIS_SYSIMG_URL}" -o "${GAPIS_SYSIMG_FILE}"  || exit $?
curl -fsSL "${HAXM_URL}" -o "${HAXM_FILE}"                  || exit $?

function template { cat "${TEMPLATE_DIR}/${1}.tpl"; }
function apply_xsl { xsltproc ${3} "${XSL_DIR}/${1}.xsl" "${2}"; }
function do_replace { sed -e "s|%%${1}%%|$(echo -n "${2}" | tr '\n' '\a')|" | tr '\a' '\n'; }
function gen_tool {
    template ${1} | do_replace "ARCHIVE_INFO" "$(apply_xsl ${1} "${REPO_FILE}")" > "${FORMULA_DIR}/android-${1}.rb"
}
function remove_line {
    grep -v "${1}" "${2}" > "${WORK_DIR}/tempfile" && mv "${WORK_DIR}/tempfile" "${2}"
}
function sed_inplace {
    sed -e "${1}" "${2}" | tr '\a' '\n' > "${WORK_DIR}/tempfile" && mv "${WORK_DIR}/tempfile" "${2}"
}
function gen_sdk_extra {
    API_PARAM="--param api-level ${1}"
    UPPER="$(echo "${2}" | tr '[:lower:]' '[:upper:]')"
    if [ -n "$(apply_xsl has-${2} "${REPO_FILE}" "${API_PARAM}")" ]; then
        template ${2} | \
            do_replace "ARCHIVE_INFO" "$(apply_xsl ${2} "${REPO_FILE}" "${API_PARAM}")" | \
            do_replace "API_VERSION" "${plat}" \
                > "${FORMULA_DIR}/android-${plat}-${2}.rb" || return $?
        sed_inplace "s|%%${UPPER}%%|\"toonetown/android/android-${plat}-${2}\"|" \
                    "${FORMULA_DIR}/android-${plat}.rb"
    else
        remove_line "%%${UPPER}%%" "${FORMULA_DIR}/android-${plat}.rb"
    fi
}

# Clean up the cask and formula directories
rm -f "${FORMULA_DIR}/"*.rb "${CASKS_DIR}"/*.rb || exit $?

# Create the SDK, platform-tools, docs, and NDK formulas
gen_tool sdk            || exit $?
gen_tool platform-tools || exit $?
gen_tool docs           || exit $?
gen_tool ndk            || exit $?

# Generate each version of the build tools
for buildTool in $(apply_xsl list-build-tools "${REPO_FILE}"); do
    buildToolVersion=$(echo "${buildTool}" | sed -e 's/\.//g')
    VERSION_PARAM="--param tool-major $(echo "${buildTool}" | cut -d'.' -f1) 
                   --param tool-minor $(echo "${buildTool}" | cut -d'.' -f2) 
                   --param tool-micro $(echo "${buildTool}" | cut -d'.' -f3)"

    # Create the formula for this version
    template build-tools | \
        do_replace "ARCHIVE_INFO" "$(apply_xsl build-tools "${REPO_FILE}" "${VERSION_PARAM}")" | \
        do_replace "BUILD_TOOL_VERSION" "${buildToolVersion}" \
        > "${FORMULA_DIR}/android-build-tools-${buildToolVersion}.rb" || exit $?
done

# Generate a platform formula for each one in the repository
for plat in $(apply_xsl list-platforms "${REPO_FILE}"); do
    API_PARAM="--param api-level ${plat}"

    # Create the main formula for this platform
    template platform | \
        do_replace "ARCHIVE_INFO" "$(apply_xsl platform "${REPO_FILE}" "${API_PARAM}")" | \
        do_replace "API_VERSION" "${plat}" \
        > "${FORMULA_DIR}/android-${plat}.rb" || exit $?

    # Create the sources and samples formulas for this platform (if it has them)
    gen_sdk_extra ${plat} sources || exit $?
    gen_sdk_extra ${plat} samples || exit $?

    # Pull up the images for this platform
    for img in $(apply_xsl list-sysimgs "${SYSIMG_FILE}" "${API_PARAM}"); do
        LONG_ABI="$(echo ${img} | cut -d'|' -f1)"
        SHORT_ABI="$(echo ${img} | cut -d'|' -f2)"
        LOWER_ABI="$(echo "${SHORT_ABI}" | tr '[:upper:]' '[:lower:]')"
        NAME="android-${plat}-sysimg-${LOWER_ABI}"

        ABI_PARAM="${API_PARAM} --stringparam abi ${LONG_ABI}"
        template sysimg | \
            do_replace "ARCHIVE_INFO" "$(apply_xsl sysimg "${SYSIMG_FILE}" "${ABI_PARAM}")" | \
            do_replace "API_VERSION" "${plat}" | \
            do_replace "SHORT_ABI" "$(echo "${SHORT_ABI}" | tr -d '_')" | \
            do_replace "LONG_ABI" "${LONG_ABI}" \
                > "${FORMULA_DIR}/${NAME}.rb" || exit $?

        if [ -n "$(echo "${img}" | cut -d'|' -f3)" ]; then
            sed_inplace "s|\(%%SYSIMG%%\)|    \"toonetown/android/${NAME}\",$(printf '\a')\1|" \
                        "${FORMULA_DIR}/android-${plat}.rb"
        fi
    done
done

# Generate the extra formulas
for extra in $(apply_xsl list-extras "${EXTRAS_FILE}" | tr ' ' '\n' | sort -u | tr '\n' ' '); do
    EXTRA_VENDOR="$(echo ${extra} | cut -d'|' -f1)"
    EXTRA_PATH="$(echo ${extra} | cut -d'|' -f2)"
    EXTRA_VENDOR_NAME="$(echo ${EXTRA_VENDOR:0:1} | tr '[:lower:]' '[:upper:]')${EXTRA_VENDOR:1}"
    EXTRA_PATH_NAME="$(echo "$(echo ${EXTRA_PATH:0:1} | tr '[:lower:]' '[:upper:]')${EXTRA_PATH:1}" | \
                            perl -pe 's/_(.)/\u$1/g' | sed -e "s/^${EXTRA_VENDOR_NAME}//g")"
    EXTRA_FILE_NAME="${EXTRA_VENDOR}-$(echo "${EXTRA_PATH}" | tr '_' '-' | sed -e "s/^${EXTRA_VENDOR}-//g")"
    EXTRA_PARAMS="--stringparam vendor ${EXTRA_VENDOR} --stringparam path ${EXTRA_PATH}"
    template extras | \
        do_replace "ARCHIVE_INFO" "$(apply_xsl extras "${EXTRAS_FILE}" "${EXTRA_PARAMS}")" | \
        do_replace "VENDOR_NAME" "${EXTRA_VENDOR_NAME}" | \
        do_replace "PATH_NAME" "${EXTRA_PATH_NAME}" | \
        do_replace "VENDOR" "${EXTRA_VENDOR}" | \
        do_replace "PATH" "${EXTRA_PATH}" \
            > "${FORMULA_DIR}/${EXTRA_FILE_NAME}.rb"  
done

# Generate the Google API addons
for plat in $(apply_xsl list-gapis "${EXTRAS_FILE}"); do
    API_PARAM="--param api-level ${plat}"

    # Create the main formula for this api level
    template gapis | \
        do_replace "ARCHIVE_INFO" "$(apply_xsl gapis "${EXTRAS_FILE}" "${API_PARAM}")" | \
        do_replace "API_VERSION" "${plat}" \
        > "${FORMULA_DIR}/google-apis-${plat}.rb" || exit $?

    # Pull up the images for this platform
    for img in $(apply_xsl list-sysimgs "${GAPIS_SYSIMG_FILE}" "${API_PARAM}"); do
        LONG_ABI="$(echo ${img} | cut -d'|' -f1)"
        SHORT_ABI="$(echo ${img} | cut -d'|' -f2)"
        LOWER_ABI="$(echo "${SHORT_ABI}" | tr '[:upper:]' '[:lower:]')"
        NAME="google-apis-${plat}-sysimg-${LOWER_ABI}"

        ABI_PARAM="${API_PARAM} --stringparam abi ${LONG_ABI}"
        template gapis-sysimg | \
            do_replace "ARCHIVE_INFO" "$(apply_xsl gapis-sysimg "${GAPIS_SYSIMG_FILE}" "${ABI_PARAM}")" | \
            do_replace "API_VERSION" "${plat}" | \
            do_replace "SHORT_ABI" "$(echo "${SHORT_ABI}" | tr -d '_')" | \
            do_replace "LONG_ABI" "${LONG_ABI}" \
                > "${FORMULA_DIR}/${NAME}.rb" || exit $?

        if [ -n "$(echo "${img}" | cut -d'|' -f3)" ]; then
            sed_inplace "s|\(%%SYSIMG%%\)|    \"toonetown/android/${NAME}\",$(printf '\a')\1|" \
                        "${FORMULA_DIR}/google-apis-${plat}.rb"
        fi
    done
done


# Copy (and stub in) our fb-adb formula
brew cat Homebrew/homebrew/fb-adb | \
    sed -e 's|depends_on "android|depends_on "toonetown/android/android|g' \
        > "${FORMULA_DIR}/fb-adb.rb"

# Create our android-intel-haxm cask
for haxm in $(apply_xsl list-extras "${HAXM_FILE}" | head -n1); do
    template haxm | \
        do_replace "ARCHIVE_INFO" "$(apply_xsl haxm "${HAXM_FILE}")" | \
        do_replace "VENDOR" "$(echo ${haxm} | cut -d'|' -f1)" | \
        do_replace "PATH" "$(echo ${haxm} | cut -d'|' -f2)" \
            > "${CASKS_DIR}/android-haxm.rb"
done
