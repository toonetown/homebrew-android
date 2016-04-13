require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android21SysimgI386 < AndroidSysimgFormula
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86-21_r03.zip"
  version "3"
  sha1 "a0b510c66769e84fa5e40515531be2d266a4247f"
  api_version "21"
  abi "x86"
  sysimg_tag "/default"
end
