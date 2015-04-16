require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22 < AndroidPlatformFormula
  url 'http://dl-ssl.google.com/android/repository/android-22_r02.zip'
  version '2'
  sha1 '5d1bd10fea962b216a0dece1247070164760a9fc'
  api_version '22'

  # Dependencies for docs, sources, and samples
  sources [ 'toonetown/android/android-22-sources' ]
  samples [ 'toonetown/android/android-22-samples' ]

end
