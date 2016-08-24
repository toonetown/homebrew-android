require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24 < AndroidPlatformFormula
  desc "Android SDK Platform 24"
  url "https://dl.google.com/android/repository/platform-24_r02.zip"
  version "2"
  sha1 "8912da3d4bfe7a9f28f0e5ce92d3a8dc96342aee"
  api_version "24"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples
  sources ["toonetown/android/android-24-sources"]

  test do
    system "true"
  end
end
