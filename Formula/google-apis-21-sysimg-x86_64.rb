require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis21SysimgX8664 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom_64 System Image"
  url "http://dl.google.com/android/repository/sys-img/google_apis/sysimg_x86_64-21_r12.zip"
  version "12"
  sha1 "61a756377cf3f65ddda2967ee8aa74b23145fb7a"
  api_version "21"
  abi "x86_64"
  sysimg_tag "/google_apis"

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=21
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-21"

  test do
    system "true"
  end
end
