require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android18SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_armv7a-18_r02.zip'
  version '2'
  sha1 '4a1a93200210d8c42793324362868846f67401ab'
  api_version '18'
  abi 'armeabi-v7a'
end
