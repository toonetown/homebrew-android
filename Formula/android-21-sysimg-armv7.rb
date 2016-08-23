require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android21SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_arm-21_r03.zip"
  version "3"
  sha1 "0b2e21421d29f48211b5289ca4addfa7f4c7ae5a"
  api_version "21"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
