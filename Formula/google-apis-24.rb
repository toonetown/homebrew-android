require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class GoogleApis24 < AndroidPlatformFormula
  desc "Android + Google APIs"
  url "http://dl.google.com/android/repository/google_apis-24_r1.zip"
  version "1"
  sha1 "31361c2868f27343ee917fbd259c1463821b6145"
  api_version "24"
  target_directory "add-ons"
  target_name      "addon-google_apis-google"

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=24
    Pkg.Revision=#{version}
  EOS

  depends_on "toonetown/android/android-24"

  test do
    system "true"
  end
end
