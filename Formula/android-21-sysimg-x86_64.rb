require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android21SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86_64-21_r04.zip"
  version "4"
  sha1 "9b2d64a69a72fa596c386899a742a404308f2c92"
  api_version "21"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
