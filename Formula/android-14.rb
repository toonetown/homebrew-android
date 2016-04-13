require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android14 < AndroidPlatformFormula
  url "https://dl.google.com/android/repository/android-14_r04.zip"
  version "4"
  sha1 "d4f1d8fbca25225b5f0e7a0adf0d39c3d6e60b3c"
  api_version "14"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples
  sources ["toonetown/android/android-14-sources"]
end
