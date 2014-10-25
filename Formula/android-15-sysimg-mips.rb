require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android15SysimgMips < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_mips-15_r01.zip'
  version '1'
  sha1 'a753bb4a6783124dad726c500ce9aec9d2c1b2d9'
  api_version '15'
  abi 'mips'
end
