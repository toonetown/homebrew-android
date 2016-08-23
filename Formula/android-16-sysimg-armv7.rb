require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android16SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_armv7a-16_r04.zip"
  version "4"
  sha1 "39c093ea755098f0ee79f607be7df9e54ba4943f"
  api_version "16"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
