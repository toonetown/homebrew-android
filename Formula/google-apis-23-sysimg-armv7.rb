require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis23SysimgArmv7 < AndroidSysimgFormula
  desc "Google APIs ARM EABI v7a System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/armeabi-v7a-23_r17.zip"
  version "17"
  sha1 "c12048a3b141582d562fdc664e5a98fd2a38f336"
  api_version "23"
  abi "armeabi-v7a"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=23
    Pkg.Revision=#{version}
    SystemImage.Abi=armeabi-v7a
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-23"

  test do
    system "true"
  end
end
