require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android25SysimgI386 < AndroidSysimgFormula
  desc "Google APIs Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-25_r02.zip"
  version "2"
  sha1 "76133b22fcd64539f84db4a37eadfb5e066c1e1d"
  api_version "25"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
