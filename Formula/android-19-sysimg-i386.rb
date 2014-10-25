require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android19SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-19_r02.zip'
  version '2'
  sha1 '8889cb418984a2a7916a359da7c429d2431ed060'
  api_version '19'
  abi 'x86'
end
