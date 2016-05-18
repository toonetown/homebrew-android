require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android19SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86-19_r05.zip"
  version "5"
  sha1 "c9298a8eafceed3b8fa11071ba63a3d18e17fd8e"
  api_version "19"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
