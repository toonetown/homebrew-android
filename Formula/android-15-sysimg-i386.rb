require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android15SysimgI386 < AndroidSysimgFormula
  url 'https://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-15_r01.zip'
  version '1'
  sha1 'd540325952e0f097509622b9e685737584b83e40'
  api_version '15'
  abi 'x86'
end
