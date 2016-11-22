require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android25 < AndroidPlatformFormula
  desc "Android SDK Platform 25"
  url "https://dl.google.com/android/repository/platform-25_r02.zip"
  version "2"
  sha1 "6057e54a04f1d141f36a2c8d20f2962b41a3183f"
  api_version "25"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
