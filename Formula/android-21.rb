require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android21 < AndroidPlatformFormula
  desc "Android SDK Platform 21, rev 2"
  url "https://dl.google.com/android/repository/android-21_r02.zip"
  version "2"
  sha1 "53536556059bb29ae82f414fd2e14bc335a4eb4c"
  api_version "21"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples
  sources ["toonetown/android/android-21-sources"]

  test do
    system "true"
  end
end
