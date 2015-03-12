require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22SysimgX8664 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86_64-22_r01.zip'
  version '1'
  sha1 '05752813603f9fa03a58dcf7f8f5e779be722aae'
  api_version '22'
  abi 'x86_64'
end
