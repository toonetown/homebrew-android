require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis22SysimgI386 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/google_apis/x86-22_r16.zip"
  version "16"
  sha1 "b99d16c9b1785b2a520938671c1c6cadd3bf2af7"
  api_version "22"
  abi "x86"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=22
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=google_apis
    SystemImage.TagDisplay=Google APIs
  EOS

  depends_on "toonetown/android/android-22"

  test do
    system "true"
  end
end
