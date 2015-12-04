require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android17 < AndroidPlatformFormula
  url 'http://dl-ssl.google.com/android/repository/android-17_r03.zip'
  version '3'
  sha1 'dbe14101c06e6cdb34e300393e64e64f8c92168a'
  api_version '17'
  target_directory 'platforms'
  target_name      'android'

  # Dependencies for docs, sources, and samples
  sources [ 'toonetown/android/android-17-sources' ]
  samples [ 'toonetown/android/android-17-samples' ]

end
