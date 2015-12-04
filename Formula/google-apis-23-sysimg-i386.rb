require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis23SysimgI386 < AndroidSysimgFormula
  url 'http://dl.google.com/android/repository/sys-img/google_apis/sysimg_x86-23_r09.zip'
  version '9'
  sha1 '5b694652c292262fcb7ec675961f59a718905afc'
  api_version '23'
  abi 'x86'
  sysimg_tag '/google_apis'

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=23
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-23"
end
