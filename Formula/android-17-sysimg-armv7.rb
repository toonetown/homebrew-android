require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android17SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_armv7a-17_r03.zip'
  version '3'
  sha1 '97cfad22b51c8475e228b207dd36dbef1c18fa38'
  api_version '17'
  abi 'armeabi-v7a'
  sysimg_tag ''
end
