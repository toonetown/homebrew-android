require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis21SysimgArmv7 < AndroidSysimgFormula
  desc "Google APIs ARM EABI v7a System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/armeabi-v7a-21_r16.zip"
  version "16"
  sha1 "843767f0cd48b457330232585d2f52eaf0b918ac"
  api_version "21"
  abi "armeabi-v7a"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=21
    Pkg.Revision=#{version}
    SystemImage.Abi=armeabi-v7a
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-21"

  test do
    system "true"
  end
end
