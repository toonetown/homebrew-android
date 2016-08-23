require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android18Sources < AndroidSourcesFormula
  url "https://dl.google.com/android/repository/sources-18_r01.zip"
  version "1"
  sha1 "8b49fdf7433f4881a2bfb559b5dd05d8ec65fb78"
  api_version "18"
  target_directory "sources"
  target_name      "android"

  test do
    system "true"
  end
end
