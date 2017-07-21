require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis24SysimgI386 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/google_apis/x86-24_r15.zip"
  version "15"
  sha1 "383d76c26a643bd25409665dd81c46936e71d8ff"
  api_version "24"
  abi "x86"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=24
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=google_apis
    SystemImage.TagDisplay=Google APIs
  EOS

  depends_on "toonetown/android/android-24"

  test do
    system "true"
  end
end
