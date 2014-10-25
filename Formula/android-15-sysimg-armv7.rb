require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android15SysimgArmv7 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_armv7a-15_r02.zip'
  version '2'
  sha1 '1bf977d6cb4e0ad38dceac0c4863d1caa21f326e'
  api_version '15'
  abi 'armeabi-v7a'
end
