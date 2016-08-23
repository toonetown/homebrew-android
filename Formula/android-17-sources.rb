require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android17Sources < AndroidSourcesFormula
  url "https://dl.google.com/android/repository/sources-17_r01.zip"
  version "1"
  sha1 "6f1f18cd2d2b1852d7f6892df9cee3823349d43a"
  api_version "17"
  target_directory "sources"
  target_name      "android"

  test do
    system "true"
  end
end
