require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android11 < AndroidPlatformFormula
  desc "Android SDK Platform 11"
  url "https://dl.google.com/android/repository/android-3.0_r02-linux.zip"
  version "2"
  sha1 "2c7d4bd13f276e76f6bbd87315fe27aba351dd37"
  api_version "11"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
