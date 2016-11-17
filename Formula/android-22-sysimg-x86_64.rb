require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android22SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86_64-22_r05.zip"
  version "5"
  sha1 "99d1d6c77e92284b4210640edf6c81eceb28520d"
  api_version "22"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
