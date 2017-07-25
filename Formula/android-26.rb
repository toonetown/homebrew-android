require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android26 < AndroidPlatformFormula
  desc "Android SDK Platform 26"
  url "https://dl.google.com/android/repository/platform-26_r02.zip"
  version "2"
  sha1 "e4ae5d7aa557a3c827135838ee400da8443ac4ef"
  api_version "26"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
