require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android16SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_armv7a-16_r04.zip'
  version '4'
  sha1 '39c093ea755098f0ee79f607be7df9e54ba4943f'
  api_version '16'
  abi 'armeabi-v7a'
end
