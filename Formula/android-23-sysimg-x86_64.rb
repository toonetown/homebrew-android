require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android23SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86_64-23_r08.zip"
  version "8"
  sha1 "8be549a1dc8cb6c0c901426cf2b737d9c6402d93"
  api_version "23"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
