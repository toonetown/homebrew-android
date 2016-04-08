require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android18SysimgI386 < AndroidSysimgFormula
  url 'https://dl.google.com/android/repository/sys-img/android/sysimg_x86-18_r02.zip'
  version '2'
  sha1 'ab3de121a44fca43ac3aa83f7d68cc47fc643ee8'
  api_version '18'
  abi 'x86'
  sysimg_tag '/default'
end
