require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android17SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-17_r03.zip"
  version "3"
  sha1 "eb30274460ff0d61f3ed37862b567811bebd8270"
  api_version "17"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
