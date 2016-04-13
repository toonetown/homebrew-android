require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis12 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "http://dl.google.com/android/repository/google_apis-12_r01.zip"
  version "1"
  sha1 "e9999f4fa978812174dfeceec0721c793a636e5d"
  api_version "12"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=12
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-12"

  test do
    system "true"
  end
end
