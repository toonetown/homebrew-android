require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android4 < AndroidPlatformFormula
  desc "Android SDK Platform 4"
  url "https://dl.google.com/android/repository/android-1.6_r03-macosx.zip"
  version "3"
  sha1 "bdafad44f5df9f127979bdb21a1fdd87ee3cd625"
  api_version "4"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
