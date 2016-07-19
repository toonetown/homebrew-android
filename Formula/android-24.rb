require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android24 < AndroidPlatformFormula
  desc "Android SDK Platform 24"
  url "https://dl.google.com/android/repository/platform-24_r01.zip"
  version "2"
  sha1 "27516dab4848f55896e16f7089038c62bbbffea7"
  api_version "24"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
