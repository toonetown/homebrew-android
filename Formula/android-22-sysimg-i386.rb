require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android22SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-22_r06.zip"
  version "6"
  sha1 "e33e2a6cc3f1cc56b2019dbef3917d2eeb26f54e"
  api_version "22"
  abi "x86"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=22
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
