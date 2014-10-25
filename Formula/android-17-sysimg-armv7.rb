require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android17SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_armv7a-17_r02.zip'
  version '2'
  sha1 '1c321cda1af793b84d47d1a8d15f85444d265e3c'
  api_version '17'
  abi 'armeabi-v7a'
end
