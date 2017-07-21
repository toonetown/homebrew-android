require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86_64-24_r08.zip"
  version "8"
  sha1 "f6559e1949a5879f31a9662f4f0e50ad60181684"
  api_version "24"
  abi "x86_64"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=24
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
