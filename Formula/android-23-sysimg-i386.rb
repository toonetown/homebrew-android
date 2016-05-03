require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android23SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86-23_r09.zip"
  version "9"
  sha1 "0ce9229974818179833899dce93f228a895ec6a2"
  api_version "23"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
