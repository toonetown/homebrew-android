require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class GoogleApis9 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "http://dl.google.com/android/repository/google_apis-9_r02.zip"
  version "2"
  sha1 "78664645a1e9accea4430814f8694291a7f1ea5d"
  api_version "9"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=9
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-9"

  test do
    system "true"
  end
end
