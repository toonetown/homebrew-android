require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android19SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-19_r05.zip"
  version "5"
  sha1 "1d98426467580abfd03c724c5344450f5d0df379"
  api_version "19"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
