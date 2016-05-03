require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android19SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86-19_r04.zip"
  version "4"
  sha1 "91d9967ddba1c955556f8a0a0efa21f01b739b1d"
  api_version "19"
  abi "x86"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
