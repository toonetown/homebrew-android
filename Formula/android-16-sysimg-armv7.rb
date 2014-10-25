require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android16SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_armv7a-16_r03.zip'
  version '3'
  sha1 'd1cddb23f17aad5821a089c403d4cddad2cf9ef7'
  api_version '16'
  abi 'armeabi-v7a'
end
