require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android17SysimgI386 < AndroidSysimgFormula
  url 'https://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-17_r01.zip'
  version '1'
  sha1 'ddb3313e8dcd07926003f7b828eafea1115ea35b'
  api_version '17'
  abi 'x86'
end
