require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis22SysimgArmv7 < AndroidSysimgFormula
  desc "Google APIs ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/google_apis/armeabi-v7a-22_r16.zip"
  version "16"
  sha1 "3cfcdc299baeb44888fce660253eaa40415fc065"
  api_version "22"
  abi "armeabi-v7a"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=22
    Pkg.Revision=#{version}
    SystemImage.Abi=armeabi-v7a
    SystemImage.TagId=google_apis
    SystemImage.TagDisplay=Google APIs
  EOS

  depends_on "toonetown/android/android-22"

  test do
    system "true"
  end
end
