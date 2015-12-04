require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgX8664 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86_64-23_r05.zip'
  version '5'
  sha1 'b4b2279361406ffdcb79a8e0f1031a43d35b4e55'
  api_version '23'
  abi 'x86_64'
  sysimg_tag ''
end
