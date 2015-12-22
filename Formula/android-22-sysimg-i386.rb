require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-22_r03.zip'
  version '3'
  sha1 '6179c10ee83b4aaf6a900656a0b7c298424d5ce6'
  api_version '22'
  abi 'x86'
  sysimg_tag ''
end
