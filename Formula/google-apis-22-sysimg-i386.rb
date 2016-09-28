require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis22SysimgI386 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/x86-22_r10.zip"
  version "10"
  sha1 "b9c9a30faccde7f50a7a278349718b22d2f4ff41"
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

  test do
    system "true"
  end
end
