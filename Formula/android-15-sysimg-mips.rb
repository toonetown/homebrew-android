require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android15SysimgMips < AndroidSysimgFormula
  desc "MIPS System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_mips-15_r01.zip"
  version "1"
  sha1 "a753bb4a6783124dad726c500ce9aec9d2c1b2d9"
  api_version "15"
  abi "mips"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=15
    Pkg.Revision=#{version}
    SystemImage.Abi=mips
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
