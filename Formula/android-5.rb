require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android5 < AndroidPlatformFormula
  url 'https://dl.google.com/android/repository/android-2.0_r01-macosx.zip'
  version '01'
  sha1 '2a866d0870dbba18e0503cd41e5fae988a21b314'
  api_version '5'
  target_directory 'platforms'
  target_name      'android'

  # Dependencies for docs, sources, and samples

end
