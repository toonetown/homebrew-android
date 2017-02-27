require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis24SysimgArmv7 < AndroidSysimgFormula
  desc "Google APIs ARM EABI v7a System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/armeabi-v7a-24_r11.zip"
  version "11"
  sha1 "1b03a9f755776c608a7de3744acabb090ddd39b4"
  api_version "24"
  abi "armeabi-v7a"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=24
    Pkg.Revision=#{version}
    SystemImage.Abi=armeabi-v7a
    SystemImage.TagId=google_apis
    SystemImage.TagDisplay=Google APIs
  EOS

  depends_on "toonetown/android/google-apis-24"

  test do
    system "true"
  end
end
