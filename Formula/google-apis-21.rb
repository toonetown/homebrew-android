require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis21 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "http://dl.google.com/android/repository/google_apis-21_r01.zip"
  version "1"
  sha1 "66a754efb24e9bb07cc51648426443c7586c9d4a"
  api_version "21"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=21
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-21"

  test do
    system "true"
  end
end
