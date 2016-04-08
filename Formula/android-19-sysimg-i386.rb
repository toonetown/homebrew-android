require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android19SysimgI386 < AndroidSysimgFormula
  url 'https://dl.google.com/android/repository/sys-img/android/sysimg_x86-19_r03.zip'
  version '3'
  sha1 '3782f3ebac5e54b3de454570add401989515ffca'
  api_version '19'
  abi 'x86'
  sysimg_tag '/default'
end
