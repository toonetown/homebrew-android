# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula")

class AndroidBuildTools2401 < AndroidToolFormula
  url "https://dl.google.com/android/repository/build-tools_r24.0.1-macosx.zip"
  version "24.0.1"
  sha1 "4fb942e52d05ded78719410fc8644e70a62f18d6"

  depends_on "toonetown/android/android-sdk"
  depends_on "toonetown/android/android-platform-tools"

  def install
    (prefix/"build-tools"/version).install Dir["*"]
    install_tools prefix/"build-tools"/version

    link_sdk_dir "build-tools"
  end

  test do
    system "true"
  end
end
