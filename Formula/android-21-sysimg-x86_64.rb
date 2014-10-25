require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android21SysimgX8664 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86_64-21_r01.zip'
  version '1'
  sha1 '0e48bdfbcbf4b7f276af7b1f10140babc9af52b3'
  api_version '21'
  abi 'x86_64'
end
