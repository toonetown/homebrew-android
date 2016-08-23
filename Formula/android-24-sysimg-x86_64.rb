require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86_64-24_r05.zip"
  version "5"
  sha1 "e1869b32b1dcb2f4d4d18c912166b3e2bee8a841"
  api_version "24"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
