require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android19SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/armeabi-v7a-19_r05.zip"
  version "5"
  sha1 "d1a5fd4f2e1c013c3d3d9bfe7e9db908c3ed56fa"
  api_version "19"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
