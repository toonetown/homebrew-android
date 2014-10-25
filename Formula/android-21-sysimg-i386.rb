require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android21SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-21_r01.zip'
  version '1'
  sha1 '1b5d4228736afc32c7ad1439740abb39b1bc0fae'
  api_version '21'
  abi 'x86'
end
