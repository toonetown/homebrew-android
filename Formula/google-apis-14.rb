require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis14 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "http://dl.google.com/android/repository/google_apis-14_r02.zip"
  version "2"
  sha1 "f8eb4d96ad0492b4c0db2d7e4f1a1a3836664d39"
  api_version "14"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=14
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-14"

  test do
    system "true"
  end
end
