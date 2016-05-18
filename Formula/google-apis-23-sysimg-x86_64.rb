require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis23SysimgX8664 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom_64 System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/sysimg_x86_64-23_r14.zip"
  version "14"
  sha1 "53b764e14aea3afe16a4abdfe6dfd540e1696480"
  api_version "23"
  abi "x86_64"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=23
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-23"

  test do
    system "true"
  end
end
