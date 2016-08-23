require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android23Sources < AndroidSourcesFormula
  url "https://dl.google.com/android/repository/sources-23_r01.zip"
  version "1"
  sha1 "b0f15da2762b42f543c5e364c2b15b198cc99cc2"
  api_version "23"
  target_directory "sources"
  target_name      "android"

  test do
    system "true"
  end
end
