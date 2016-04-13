require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis6 < AndroidPlatformFormula
  url "http://dl.google.com/android/repository/google_apis-6_r01.zip"
  version "1"
  sha1 "5ff545d96e031e09580a6cf55713015c7d4936b2"
  api_version "6"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=6
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-6"
end
