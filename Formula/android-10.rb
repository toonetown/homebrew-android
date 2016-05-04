require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android10 < AndroidPlatformFormula
  desc "Android SDK Platform 10"
  url "https://dl.google.com/android/repository/android-2.3.3_r02-linux.zip"
  version "2"
  sha1 "887e37783ec32f541ea33c2c649dda648e8e6fb3"
  api_version "10"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples

  test do
    system "true"
  end
end
