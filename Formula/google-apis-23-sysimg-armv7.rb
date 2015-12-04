require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis23SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl.google.com/android/repository/sys-img/google_apis/sysimg_arm-23_r07.zip'
  version '7'
  sha1 '8fdeb07bcdaff4211b7fd979135541b06b2adaaf'
  api_version '23'
  abi 'armeabi-v7a'
  sysimg_tag '/google_apis'

  src_properties <<-EOS.undent
    Addon.VendorId=google
    AndroidVersion.ApiLevel=23
    Pkg.Revision=#{version}
    SystemImage.Abi=armeabi-v7a
    SystemImage.TagId=google_apis
  EOS

  depends_on "toonetown/android/google-apis-23"
end
