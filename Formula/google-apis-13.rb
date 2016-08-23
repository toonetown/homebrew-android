require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis13 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "http://dl.google.com/android/repository/google_apis-13_r01.zip"
  version "1"
  sha1 "3b153edd211c27dc736c893c658418a4f9041417"
  api_version "13"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=13
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-13"

  test do
    system "true"
  end
end
