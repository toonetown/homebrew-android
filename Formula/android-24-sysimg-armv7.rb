require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/armeabi-v7a-24_r07.zip"
  version "7"
  sha1 "3454546b4eed2d6c3dd06d47757d6da9f4176033"
  api_version "24"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
