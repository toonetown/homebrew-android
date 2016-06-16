require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android24SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86_64-24_r04.zip"
  version "4"
  sha1 "b8fc1f5ce6521c2ef02000ebd99a891522fbe255"
  api_version "24"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
