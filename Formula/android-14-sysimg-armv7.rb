require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android14SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_armv7a-14_r02.zip"
  version "2"
  sha1 "d8991b0c06b18d7d6ed4169d67460ee1add6661b"
  api_version "14"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
