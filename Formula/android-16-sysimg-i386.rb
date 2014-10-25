require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android16SysimgI386 < AndroidSysimgFormula
  url 'https://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-16_r01.zip'
  version '1'
  sha1 '9d35bcaa4f9b40443941f32b8a50337f413c021a'
  api_version '16'
  abi 'x86'
end
