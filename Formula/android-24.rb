require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android24 < AndroidPlatformFormula
  desc "Android SDK Platform 24"
  url "https://dl.google.com/android/repository/platform-24_r01.zip"
  version "1"
  sha1 "b58f5dd3f60ee0fbaa09cce6372157c36c688075"
  api_version "24"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
