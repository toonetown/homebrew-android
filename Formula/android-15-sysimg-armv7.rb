require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android15SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_armv7a-15_r03.zip"
  version "3"
  sha1 "0a47f586e172b1cf3db2ada857a70c2bdec24ef8"
  api_version "15"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
