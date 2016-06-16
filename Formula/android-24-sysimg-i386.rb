require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android24SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86-24_r04.zip"
  version "4"
  sha1 "a06d11314e805f1259cefa388c6a4e8b1b47bf29"
  api_version "24"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
