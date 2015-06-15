require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android16SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-16_r02.zip'
  version '2'
  sha1 '36c2a2e394bcb3290583ce09815eae7711d0b2c2'
  api_version '16'
  abi 'x86'
end
