require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis22 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "http://dl.google.com/android/repository/google_apis-22_r01.zip"
  version "1"
  sha1 "5def0f42160cba8acff51b9c0c7e8be313de84f5"
  api_version "22"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=22
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-22"

  test do
    system "true"
  end
end
