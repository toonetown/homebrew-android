require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android9 < AndroidPlatformFormula
  desc "Android SDK Platform 9"
  url "https://dl.google.com/android/repository/android-2.3.1_r02-linux.zip"
  version "2"
  sha1 "209f8a7a8b2cb093fce858b8b55fed3ba5206773"
  api_version "9"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
