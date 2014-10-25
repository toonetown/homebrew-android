require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android19SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_armv7a-19_r02.zip'
  version '2'
  sha1 'e0d375397e28e3d5d9577a00132463a4696248e5'
  api_version '19'
  abi 'armeabi-v7a'
end
