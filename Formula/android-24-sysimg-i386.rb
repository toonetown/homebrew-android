require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86-24_r06.zip"
  version "6"
  sha1 "4e76a5f5dd9b33e674a7f28a1bb8754a04f8adb7"
  api_version "24"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
