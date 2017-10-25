require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android27 < AndroidPlatformFormula
  desc "Android SDK Platform 27"
  url "https://dl.google.com/android/repository/platform-27_r01.zip"
  version "1"
  sha1 "dfda0862550768ed04a4fb0e03c322230aff9fdc"
  api_version "27"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
