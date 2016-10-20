require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android25 < AndroidPlatformFormula
  desc "Android SDK Platform 25"
  url "https://dl.google.com/android/repository/platform-25_r01.zip"
  version "1"
  sha1 "5a7ec10d7ddd3b2729384b5d40d7cbcfe968d34f"
  api_version "25"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
