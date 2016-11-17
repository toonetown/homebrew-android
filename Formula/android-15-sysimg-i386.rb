require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android15SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-15_r04.zip"
  version "4"
  sha1 "e45c728b64881c0e86529a8f7ea9c103a3cd14c1"
  api_version "15"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
