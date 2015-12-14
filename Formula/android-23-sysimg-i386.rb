require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-23_r06.zip'
  version '6'
  sha1 'c4153b4c93b7ea88064934f67a654f140c52750a'
  api_version '23'
  abi 'x86'
  sysimg_tag ''
end
