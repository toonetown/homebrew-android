require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android25SysimgX8664 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86_64-25_r03.zip"
  version "3"
  sha1 "4593ee04811df21c339f3374fc5917843db06f8d"
  api_version "25"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
