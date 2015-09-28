require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android13 < AndroidPlatformFormula
  url 'https://dl-ssl.google.com/android/repository/android-3.2_r01-linux.zip'
  version '01'
  sha1 '6189a500a8c44ae73a439604363de93591163cd9'
  api_version '13'

  # Dependencies for docs, sources, and samples
  samples [ 'toonetown/android/android-13-samples' ]

end
