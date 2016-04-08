require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android15SysimgI386 < AndroidSysimgFormula
  url 'https://dl.google.com/android/repository/sys-img/android/sysimg_x86-15_r02.zip'
  version '2'
  sha1 '56b8d4b3d0f6a8876bc78d654da186f3b7b7c44f'
  api_version '15'
  abi 'x86'
  sysimg_tag '/default'
end
