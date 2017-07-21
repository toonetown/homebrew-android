require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android21SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-21_r05.zip"
  version "5"
  sha1 "00f0eb0a1003efe3316347f762e20a85d8749cff"
  api_version "21"
  abi "x86"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=21
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
