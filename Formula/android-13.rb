require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android13 < AndroidPlatformFormula
  desc "Android SDK Platform 13"
  url "https://dl.google.com/android/repository/android-3.2_r01.zip"
  version "1"
  sha1 "6189a500a8c44ae73a439604363de93591163cd9"
  api_version "13"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
