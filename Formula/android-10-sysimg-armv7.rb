require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android10SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/armv7-10_r04.zip"
  version "4"
  sha1 "54680383118eb5c95a11e1cc2a14aa572c86ee69"
  api_version "10"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
