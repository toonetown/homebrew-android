require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android23SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86_64-23_r09.zip"
  version "9"
  sha1 "571f5078a3d337a9144e2af13bd23ca46845a979"
  api_version "23"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
