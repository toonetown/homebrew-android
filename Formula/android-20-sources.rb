require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android20Sources < AndroidSourcesFormula
  url "https://dl.google.com/android/repository/sources-20_r01.zip"
  version "1"
  sha1 "8da3e40f2625f9f7ef38b7e403f49f67226c0d76"
  api_version "20"
  target_directory "sources"
  target_name      "android"
end
