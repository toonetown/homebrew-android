require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android22SysimgArmv7 < AndroidSysimgFormula
  desc "ARM EABI v7a System Image"
  url "https://dl.google.com/android/repository/sys-img/android/armeabi-v7a-22_r02.zip"
  version "2"
  sha1 "2114ec015dbf3a16cbcb4f63e8a84a1b206a07a1"
  api_version "22"
  abi "armeabi-v7a"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=22
    Pkg.Revision=#{version}
    SystemImage.Abi=armeabi-v7a
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
