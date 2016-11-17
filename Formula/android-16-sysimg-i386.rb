require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android16SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-16_r05.zip"
  version "5"
  sha1 "7ea16da3a8fdb880b1b290190fcc1bde2821c1e0"
  api_version "16"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
