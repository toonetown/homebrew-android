require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android24SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_armeabi-v7a-24_r05.zip"
  version "5"
  sha1 "2eb8fb86f7312614a2a0b033d669d67206a618ff"
  api_version "24"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
