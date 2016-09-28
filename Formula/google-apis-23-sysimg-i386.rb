require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis23SysimgI386 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/x86-23_r17.zip"
  version "17"
  sha1 "098dd3ed7a1e7406b961e2a4fe2789e2dfe12b30"
  api_version "23"
  abi "x86"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=23
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-23"

  test do
    system "true"
  end
end
