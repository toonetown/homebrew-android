require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-23_r03.zip'
  version '3'
  sha1 '3cb2e8efb575c35a558b091eac7e1bc5843f5f12'
  api_version '23'
  abi 'x86'
end
