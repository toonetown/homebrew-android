require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis16 < AndroidPlatformFormula
  url "http://dl.google.com/android/repository/google_apis-16_r04.zip"
  version "4"
  sha1 "ee6acf1b01020bfa8a8e24725dbc4478bee5e792"
  api_version "16"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=16
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-16"
end
