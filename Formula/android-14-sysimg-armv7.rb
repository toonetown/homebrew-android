require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android14SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_armv7a-14_r02.zip'
  version '2'
  sha1 'd8991b0c06b18d7d6ed4169d67460ee1add6661b'
  api_version '14'
  abi 'armeabi-v7a'
end
