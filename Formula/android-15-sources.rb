require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android15Sources < AndroidSourcesFormula
  url "https://dl.google.com/android/repository/sources-15_r02.zip"
  version "2"
  sha1 "e5992a5747c9590783fbbdd700337bf0c9f6b1fa"
  api_version "15"
  target_directory "sources"
  target_name      "android"

  test do
    system "true"
  end
end
