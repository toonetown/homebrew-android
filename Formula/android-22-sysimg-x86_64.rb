require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android22SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86_64-22_r04.zip"
  version "4"
  sha1 "258af99a63a6cd7f97b90cb5847c702bedc17216"
  api_version "22"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
