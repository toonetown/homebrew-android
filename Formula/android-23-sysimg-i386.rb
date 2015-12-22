require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-23_r07.zip'
  version '7'
  sha1 '53b78635eb9be81d556d10fe6304725a7fcb2b9e'
  api_version '23'
  abi 'x86'
  sysimg_tag ''
end
