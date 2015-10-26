require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgX8664 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86_64-23_r04.zip'
  version '4'
  sha1 '07ba4d1c9bd0cbca28119f3bd1387c5f05e3d7c0'
  api_version '23'
  abi 'x86_64'
end
