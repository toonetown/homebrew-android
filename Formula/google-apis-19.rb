require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis19 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "http://dl.google.com/android/repository/google_apis-19_r18.zip"
  version "18"
  sha1 "701595b0d9985cca00be29b3c606e64731c3e1f7"
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
