require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android21SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86-21_r04.zip"
  version "4"
  sha1 "3b78ad294aa1cdefa4be663d4af6c80d920ec49e"
  api_version "21"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
