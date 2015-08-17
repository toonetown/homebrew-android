require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_arm-23_r03.zip'
  version '3'
  sha1 '7bb8768ec4333500192fd9627d4234f505fa98dc'
  api_version '23'
  abi 'armeabi-v7a'
end
