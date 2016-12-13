require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android25 < AndroidPlatformFormula
  desc "Android SDK Platform 25"
  url "https://dl.google.com/android/repository/platform-25_r03.zip"
  version "3"
  sha1 "00c2c5765e8988504be10a1eb66ed71fcdbd7fe8"
  api_version "25"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples
  sources ["toonetown/android/android-25-sources"]

  test do
    system "true"
  end
end
