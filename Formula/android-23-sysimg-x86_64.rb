require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android23SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86_64-23_r10.zip"
  version "10"
  sha1 "7cbc291483ca07dc67b71268c5f08a5755f50f51"
  api_version "23"
  abi "x86_64"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=23
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
