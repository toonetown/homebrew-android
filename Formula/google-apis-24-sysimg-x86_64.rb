require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis24SysimgX8664 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/google_apis/x86_64-24_r16.zip"
  version "16"
  sha1 "c1736a894a0e95c16078a23a3b290bae55d211b0"
  api_version "24"
  abi "x86_64"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=24
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=google_apis
    SystemImage.TagDisplay=Google APIs
  EOS

  depends_on "toonetown/android/android-24"

  test do
    system "true"
  end
end
