require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis19SysimgI386 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/google_apis/x86-19_r29.zip"
  version "29"
  sha1 "f637232a5dc0c73fe6008b75d8eca307cfab5dd5"
  api_version "19"
  abi "x86"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=19
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=google_apis
    SystemImage.TagDisplay=Google APIs
  EOS

  depends_on "toonetown/android/android-19"

  test do
    system "true"
  end
end
