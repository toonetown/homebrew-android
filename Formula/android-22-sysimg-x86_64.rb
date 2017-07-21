require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android22SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86_64-22_r06.zip"
  version "6"
  sha1 "5db3b27f78cd9c4c5092b1cad5a5dd479fb5b2e4"
  api_version "22"
  abi "x86_64"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=22
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
