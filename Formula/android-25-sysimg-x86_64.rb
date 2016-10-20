require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android25SysimgX8664 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86_64-25_r02.zip"
  version "2"
  sha1 "41159537591165f7e9b4f18864de304154883080"
  api_version "25"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
