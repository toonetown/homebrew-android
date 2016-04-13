require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android22 < AndroidPlatformFormula
  url "https://dl.google.com/android/repository/android-22_r02.zip"
  version "2"
  sha1 "5d1bd10fea962b216a0dece1247070164760a9fc"
  api_version "22"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples
  sources ["toonetown/android/android-22-sources"]
end
