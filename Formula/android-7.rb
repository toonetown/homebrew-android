require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android7 < AndroidPlatformFormula
  url "https://dl.google.com/android/repository/android-2.1_r03-linux.zip"
  version "3"
  sha1 "5ce51b023ac19f8738500b1007a1da5de2349a1e"
  api_version "7"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples
end
