require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22SysimgX8664 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86_64-22_r03.zip'
  version '3'
  sha1 '84dbd858caa1621c316abf106b103b404931109c'
  api_version '22'
  abi 'x86_64'
  sysimg_tag ''
end
