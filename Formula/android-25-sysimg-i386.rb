require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android25SysimgI386 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-25_r03.zip"
  version "3"
  sha1 "7dd19cfee4e43a1f60e0f5f058404d92d9544b33"
  api_version "25"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
