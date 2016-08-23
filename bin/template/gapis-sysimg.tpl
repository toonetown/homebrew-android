require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis%%API_VERSION%%Sysimg%%SHORT_ABI%% < AndroidSysimgFormula
%%ARCHIVE_INFO%%
  api_version "%%API_VERSION%%"
  abi "%%LONG_ABI%%"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=%%API_VERSION%%
    Pkg.Revision=#{version}
    SystemImage.Abi=%%LONG_ABI%%
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-%%API_VERSION%%"

  test do
    system "true"
  end
end
