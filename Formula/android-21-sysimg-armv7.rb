require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android21SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_arm-21_r01.zip'
  version '1'
  sha1 '74a74b89a06ffba03448ccdfbb414c49026e660c'
  api_version '21'
  abi 'armeabi-v7a'
end
