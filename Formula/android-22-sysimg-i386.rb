require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22SysimgI386 < AndroidSysimgFormula
  url 'https://dl.google.com/android/repository/sys-img/android/sysimg_x86-22_r04.zip'
  version '4'
  sha1 'b9381a43f102f5401ff7cb1c41ad2f10cde0ea82'
  api_version '22'
  abi 'x86'
  sysimg_tag '/default'
end
