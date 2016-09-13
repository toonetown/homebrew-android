require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-24_r07.zip"
  version "7"
  sha1 "566fdee283a907854bfa3c174265bc31f396eabd"
  api_version "24"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
