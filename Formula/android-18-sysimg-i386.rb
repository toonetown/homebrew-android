require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android18SysimgI386 < AndroidSysimgFormula
  url 'https://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-18_r01.zip'
  version '1'
  sha1 'f11bc9fccd3e7e46c07d8b26e112a8d0b45966c1'
  api_version '18'
  abi 'x86'
end
