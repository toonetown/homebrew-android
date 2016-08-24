require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86_64-24_r06.zip"
  version "6"
  sha1 "88e566de5d21665bddf3cd61d8bea8506cf65a9c"
  api_version "24"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
