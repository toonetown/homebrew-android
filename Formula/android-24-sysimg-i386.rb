require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24SysimgI386 < AndroidSysimgFormula
  desc "Intel x86 Atom System Image"
  url "https://dl.google.com/android/repository/sys-img/android/x86-24_r08.zip"
  version "8"
  sha1 "c1cae7634b0216c0b5990f2c144eb8ca948e3511"
  api_version "24"
  abi "x86"
  sysimg_tag "/default"

  src_properties <<-EOS.undent
    AndroidVersion.ApiLevel=24
    Pkg.Revision=#{version}
    SystemImage.Abi=x86
    SystemImage.TagId=default
  EOS

  test do
    system "true"
  end
end
