require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgI386 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-23_r04.zip'
  version '4'
  sha1 'abd300ad36bae688ce78aadcf83e2d8846f8bce8'
  api_version '23'
  abi 'x86'
end
