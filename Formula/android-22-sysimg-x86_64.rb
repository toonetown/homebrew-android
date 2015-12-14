require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22SysimgX8664 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86_64-22_r02.zip'
  version '2'
  sha1 '38da01b1f294760977e9ce2dd8a68fc3cbe3e149'
  api_version '22'
  abi 'x86_64'
  sysimg_tag ''
end
