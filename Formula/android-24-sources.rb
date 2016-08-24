require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula") unless defined?(android_sdk_formula)

class Android24Sources < AndroidSourcesFormula
  url "https://dl.google.com/android/repository/sources-24_r01.zip"
  version "1"
  sha1 "6b96115830a83d654479f32ce4b724ca9011148b"
  api_version "24"
  target_directory "sources"
  target_name      "android"

  test do
    system "true"
  end
end
