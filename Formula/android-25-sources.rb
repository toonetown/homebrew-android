require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android25Sources < AndroidSourcesFormula
  url "https://dl.google.com/android/repository/sources-25_r01.zip"
  version "1"
  sha1 "bbc72efd1a9bad87cc507e308f0d29aad438c52c"
  api_version "25"
  target_directory "sources"
  target_name      "android"

  test do
    system "true"
  end
end
