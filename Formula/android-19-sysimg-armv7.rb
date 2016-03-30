require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android19SysimgArmv7 < AndroidSysimgFormula
  url 'https://dl.google.com/android/repository/sys-img/android/sysimg_armv7a-19_r03.zip'
  version '3'
  sha1 '5daf7718e3ab03d9bd8792b492dd305f386ef12f'
  api_version '19'
  abi 'armeabi-v7a'
  sysimg_tag ''
end
