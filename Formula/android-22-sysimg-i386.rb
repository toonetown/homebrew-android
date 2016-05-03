require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android22SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86-22_r05.zip"
  version "5"
  sha1 "909e0ad91ed43381597e82f65ec93d41f049dd53"
  api_version "22"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
