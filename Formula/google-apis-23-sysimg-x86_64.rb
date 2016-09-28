require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis23SysimgX8664 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom_64 System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/x86_64-23_r17.zip"
  version "17"
  sha1 "21b935c03ee9ae78800d9e7d3a84c9fe212a86c9"
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
