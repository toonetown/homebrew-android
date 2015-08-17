require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgX8664 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86_64-23_r03.zip'
  version '3'
  sha1 '226510856431bc4a73690540a8d7cbad974bedd3'
  api_version '23'
  abi 'x86_64'
end
