require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android18 < AndroidPlatformFormula
  desc "Android SDK Platform 18, rev 3"
  url "https://dl.google.com/android/repository/android-18_r03.zip"
  version "3"
  sha1 "e6b09b3505754cbbeb4a5622008b907262ee91cb"
  api_version "18"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples
  sources ["toonetown/android/android-18-sources"]

  test do
    system "true"
  end
end
