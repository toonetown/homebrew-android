require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-23_r08.zip'
  version '8'
  sha1 '127b2143b686fead099ef6b58691d9b467f23770'
  api_version '23'
  abi 'x86'
  sysimg_tag ''
end
