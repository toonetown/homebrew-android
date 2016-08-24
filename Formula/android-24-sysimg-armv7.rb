require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_armeabi-v7a-24_r06.zip"
  version "6"
  sha1 "e40c4cb6a18293ca064d7414ae7248364f988c33"
  api_version "24"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
