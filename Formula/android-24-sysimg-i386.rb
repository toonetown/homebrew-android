require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86-24_r05.zip"
  version "5"
  sha1 "ce6441c4cadaecd28b364c59b36c31ef0904dae0"
  api_version "24"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
