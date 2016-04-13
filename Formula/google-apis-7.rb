require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis7 < AndroidPlatformFormula
  url "http://dl.google.com/android/repository/google_apis-7_r01.zip"
  version "1"
  sha1 "2e7f91e0fe34fef7f58aeced973c6ae52361b5ac"
  api_version "7"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=7
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-7"
end
