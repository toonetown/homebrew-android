require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis22SysimgX8664 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/google_apis/x86_64-22_r15.zip"
  version "15"
  sha1 "5ae5e9ac3b8f954e0ec77f1820df118193fc53d3"
  api_version "22"
  abi "x86_64"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=22
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=google_apis
    SystemImage.TagDisplay=Google APIs
  EOS

  depends_on "toonetown/android/android-22"

  test do
    system "true"
  end
end
