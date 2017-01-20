require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android17SysimgMips < AndroidSysimgFormula
  desc "MIPS System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_mips-17_r01.zip"
  version "1"
  sha1 "f0c6e153bd584c29e51b5c9723cfbf30f996a05d"
  api_version "17"
  abi "mips"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=17
    Pkg.Revision=#{version}
    SystemImage.Abi=mips
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
