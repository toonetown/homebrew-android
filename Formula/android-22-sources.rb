require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android22Sources < AndroidSourcesFormula
  url "https://dl.google.com/android/repository/sources-22_r01.zip"
  version "1"
  sha1 "98320e13976d11597a4a730a8d203ac9a03ed5a6"
  api_version "22"
  target_directory "sources"
  target_name      "android"

  test do
    system "true"
  end
end
