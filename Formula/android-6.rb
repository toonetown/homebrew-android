require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android6 < AndroidPlatformFormula
  desc "Android SDK Platform 6"
  url "https://dl.google.com/android/repository/android-2.0.1_r01-macosx.zip"
  version "1"
  sha1 "c3096f80d75a6fc8cb38ef8a18aec920e53d42c0"
  api_version "6"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
