require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgX8664 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86_64-23_r07.zip'
  version '7'
  sha1 'fabc3e23123be68f5985abbfc2597ae256e7a177'
  api_version '23'
  abi 'x86_64'
  sysimg_tag ''
end
