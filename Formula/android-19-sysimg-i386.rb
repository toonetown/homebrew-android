require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android19SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-19_r06.zip"
  version "6"
  sha1 "2ac82153aae97f7eae4c5a0761224fe04321d03d"
  api_version "19"
  abi "x86"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=19
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
