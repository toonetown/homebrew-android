require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23SysimgX8664 < AndroidSysimgFormula
  url 'http://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86_64-23_r06.zip'
  version '6'
  sha1 '4919fbeec320cc5bfe7bef77cf463a892a1d3333'
  api_version '23'
  abi 'x86_64'
  sysimg_tag ''
end
