require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android7 < AndroidPlatformFormula
  url 'https://dl-ssl.google.com/android/repository/android-2.1_r03-linux.zip'
  version '03'
  sha1 '5ce51b023ac19f8738500b1007a1da5de2349a1e'
  api_version '7'

  # Dependencies for docs, sources, samples, and system images
  samples [ 'toonetown/android/android-7-samples' ]
  sysimg  [
  ]

end
