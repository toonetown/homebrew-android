require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android18SysimgArmv7 < AndroidSysimgFormula
  url 'https://dl.google.com/android/repository/sys-img/android/sysimg_armv7a-18_r03.zip'
  version '3'
  sha1 '2d7d51f4d2742744766511e5d6b491bd49161c51'
  api_version '18'
  abi 'armeabi-v7a'
  sysimg_tag '/default'
end
