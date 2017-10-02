require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android26Sources < AndroidSourcesFormula
  url "https://dl.google.com/android/repository/sources-26_r01.zip"
  version "1"
  sha1 "2af701ee3223d580409288540b1d06932fd8f9b9"
  api_version "26"
  target_directory "sources"
  target_name      "android"

  test do
    system "true"
  end
end
