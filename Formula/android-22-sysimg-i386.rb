require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android22SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-22_r05.zip"
  version "5"
  sha1 "7e2c93891ea9efec07dccccf6b9ab051a014dbdf"
  api_version "22"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
