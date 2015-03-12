require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-22_r01.zip'
  version '1'
  sha1 '6c7bb51e41a16099bb1f2a3cc81fdb5aa053fc15'
  api_version '22'
  abi 'x86'
end
