require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis22SysimgX8664 < AndroidSysimgFormula
  url 'http://dl.google.com/android/repository/sys-img/google_apis/sysimg_x86_64-22_r01.zip'
  version '1'
  sha1 '078ecd0dd702db28cb9e15c1b0d1832f944548ca'
  api_version '22'
  abi 'x86_64'
  sysimg_tag '/google_apis'

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=22
    Pkg.Revision=#{version}
    SystemImage.Abi=x86_64
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-22"
end
