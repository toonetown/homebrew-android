require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android23SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/armeabi-v7a-23_r06.zip"
  version "6"
  sha1 "7cf2ad756e54a3acfd81064b63cb0cb9dff2798d"
  api_version "23"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
