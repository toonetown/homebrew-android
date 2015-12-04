require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-23_r05.zip'
  version '5'
  sha1 '81c847d168bbc24224d3f6950ab935614f1e36fc'
  api_version '23'
  abi 'x86'
  sysimg_tag ''
end
