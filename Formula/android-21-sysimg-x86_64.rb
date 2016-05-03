require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android21SysimgX8664 < AndroidSysimgFormula
  desc "Intel x86 Atom_64 System Image"
  url "https://dl.google.com/android/repository/sys-img/android/sysimg_x86_64-21_r04.zip"
  version "4"
  sha1 "eb14ba9c14615d5e5a21c854be29aa903d9bb63d"
  api_version "21"
  abi "x86_64"
  sysimg_tag "/default"

  test do
    system "true"
  end
end
