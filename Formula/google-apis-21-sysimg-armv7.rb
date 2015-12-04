require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis21SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl.google.com/android/repository/sys-img/google_apis/sysimg_arm-21_r09.zip'
  version '9'
  sha1 '800ef69ebd5c801546a6cb16ab3781b6973373f6'
  api_version '21'
  abi 'armeabi-v7a'
  sysimg_tag '/google_apis'

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=21
    Pkg.Revision=#{version}
    SystemImage.Abi=armeabi-v7a
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-21"
end
