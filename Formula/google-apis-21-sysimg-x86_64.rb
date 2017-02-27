require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis21SysimgX8664 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom_64 System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/x86_64-21_r19.zip"
  version "19"
  sha1 "ed557c667f743798f62f5a54d5bee8063a2383a5"
  api_version "21"
  abi "x86_64"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=21
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=google_apis
    SystemImage.TagDisplay=Google APIs
  EOS

  depends_on "toonetown/android/google-apis-21"

  test do
    system "true"
  end
end
