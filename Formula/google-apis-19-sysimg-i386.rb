require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis19SysimgI386 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/sysimg_x86-19_r20.zip"
  version "20"
  sha1 "b8f5a56440b35fc7618f8d210ff1a75d514816bc"
  api_version "19"
  abi "x86"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=19
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-19"

  test do
    system "true"
  end
end
