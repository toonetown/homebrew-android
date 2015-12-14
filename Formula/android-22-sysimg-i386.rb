require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-22_r02.zip'
  version '2'
  sha1 '5b3d2fcd18910c294cf7ec207c1e85f1ef9b386e'
  api_version '22'
  abi 'x86'
  sysimg_tag ''
end
