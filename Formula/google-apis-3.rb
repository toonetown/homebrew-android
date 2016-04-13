require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis3 < AndroidPlatformFormula
  url "http://dl.google.com/android/repository/google_apis-3-r03.zip"
  version "3"
  sha1 "1f92abf3a76be66ae8032257fc7620acbd2b2e3a"
  api_version "3"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=3
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-3"
end
