require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis21SysimgX8664 < AndroidSysimgFormula
  url "http://dl.google.com/android/repository/sys-img/google_apis/sysimg_x86_64-21_r10.zip"
  version "10"
  sha1 "e9d75e0d6fc6733b3b0578ddda85f1ac702f8ea0"
  api_version "21"
  abi "x86_64"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=21
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-21"
end
