require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android26 < AndroidPlatformFormula
  desc "Android SDK Platform 26"
  url "https://dl.google.com/android/repository/platform-26_r01.zip"
  version "1"
  sha1 "33a4f9788bfd7123e712906b2d7e5d54a729e14a"
  api_version "26"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
