require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android21SysimgX8664 < AndroidSysimgFormula
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86_64-21_r03.zip"
  version "3"
  sha1 "2f205b728695d84488156f4846beb83a353ea64b"
  api_version "21"
  abi "x86_64"
  sysimg_tag "/default"
end
