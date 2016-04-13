require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis10 < AndroidPlatformFormula
  url "http://dl.google.com/android/repository/google_apis-10_r02.zip"
  version "2"
  sha1 "cc0711857c881fa7534f90cf8cc09b8fe985484d"
  api_version "10"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=10
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-10"
end
