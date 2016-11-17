require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android18SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/armeabi-v7a-18_r04.zip"
  version "4"
  sha1 "0bf34ecf4ddd53f6b1b7fe7dfa12f2887c17e642"
  api_version "18"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
