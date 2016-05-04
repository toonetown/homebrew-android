require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android20 < AndroidPlatformFormula
  desc "Android SDK Platform 20"
  url "https://dl.google.com/android/repository/android-20_r02.zip"
  version "2"
  sha1 "a9251f8a3f313ab05834a07a963000927637e01d"
  api_version "20"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples
  sources ["toonetown/android/android-20-sources"]

  test do
    system "true"
  end
end
