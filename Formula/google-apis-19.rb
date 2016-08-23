require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis19 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "http://dl.google.com/android/repository/google_apis-19_r20.zip"
  version "20"
  sha1 "5b933abe830b2f25b4c0f171d45e9e0651e56311"
  api_version "19"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=19
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-19"

  test do
    system "true"
  end
end
