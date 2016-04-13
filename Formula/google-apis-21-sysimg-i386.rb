require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis21SysimgI386 < AndroidSysimgFormula
  url "http://dl.google.com/android/repository/sys-img/google_apis/sysimg_x86-21_r10.zip"
  version "10"
  sha1 "c218fba49110dcc811d24bc170af8863c6253f8f"
  api_version "21"
  abi "x86"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=21
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-21"
end
