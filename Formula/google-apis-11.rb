require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis11 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "https://dl.google.com/android/repository/google_apis-11_r01.zip"
  version "1"
  sha1 "5eab5e81addee9f3576d456d205208314b5146a5"
  api_version "11"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=11
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-11"

  test do
    system "true"
  end
end
