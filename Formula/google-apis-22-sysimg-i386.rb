require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis22SysimgI386 < AndroidSysimgFormula
  url "http://dl.google.com/android/repository/sys-img/google_apis/sysimg_x86-22_r04.zip"
  version "4"
  sha1 "86754a8918d0dbfe74bbe10ac57f5ad385db9025"
  api_version "22"
  abi "x86"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=22
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-22"
end
