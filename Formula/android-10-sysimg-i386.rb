require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android10SysimgI386 < AndroidSysimgFormula
  url 'https://dl-ssl.google.com/android/repository/sys-img/android/sysimg_x86-10_r02.zip'
  version '2'
  sha1 '34e2436f69606cdfe35d3ef9112f0c64e3ff021d'
  api_version '10'
  abi 'x86'
end
