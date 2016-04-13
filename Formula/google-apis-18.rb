require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis18 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "http://dl.google.com/android/repository/google_apis-18_r04.zip"
  version "4"
  sha1 "6109603409debdd40854d4d4a92eaf8481462c8b"
  api_version "18"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=18
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-18"

  test do
    system "true"
  end
end
