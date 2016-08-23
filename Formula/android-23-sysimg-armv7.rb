require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android23SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_arm-23_r03.zip"
  version "3"
  sha1 "7bb8768ec4333500192fd9627d4234f505fa98dc"
  api_version "23"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
