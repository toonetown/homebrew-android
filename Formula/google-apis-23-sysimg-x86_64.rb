require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis23SysimgX8664 < AndroidSysimgFormula
  url 'http://dl.google.com/android/repository/sys-img/google_apis/sysimg_x86_64-23_r09.zip'
  version '9'
  sha1 '31ed3b7e4a94080ee60acd8c6c8ffc1ac1f5fdd8'
  api_version '23'
  abi 'x86_64'
  sysimg_tag '/google_apis'

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=23
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-23"
end
