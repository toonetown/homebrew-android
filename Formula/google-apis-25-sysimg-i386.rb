require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis25SysimgI386 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/x86-25_r04.zip"
  version "4"
  sha1 "e0593bed9ae14807f13c179789deee8402533123"
  api_version "25"
  abi "x86"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=25
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=google_apis
    SystemImage.TagDisplay=Google APIs
  EOS

  depends_on "toonetown/android/google-apis-25"

  test do
    system "true"
  end
end
