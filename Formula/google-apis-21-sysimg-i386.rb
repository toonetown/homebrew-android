require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis21SysimgI386 < AndroidSysimgFormula
  url 'http://dl.google.com/android/repository/sys-img/google_apis/sysimg_x86-21_r09.zip'
  version '9'
  sha1 'b6a979f63c72e88142ea449b906e443f986a12cf'
  api_version '21'
  abi 'x86'
  sysimg_tag '/google_apis'

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=21
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-21"
end
