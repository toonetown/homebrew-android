require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android10SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-10_r03.zip'
  version '3'
  sha1 '6b8539eaca9685d2d3289bf8e6d21d366d791326'
  api_version '10'
  abi 'x86'
  sysimg_tag ''
end
