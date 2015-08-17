require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23 < AndroidPlatformFormula
  url 'http://dl-ssl.google.com/android/repository/android-23_r01.zip'
  version '1'
  sha1 'cbccca8d3127e894845556ce999b28281de541bd'
  api_version '23'

  # Dependencies for docs, sources, and samples
  sources [ 'toonetown/android/android-23-sources' ]
  samples [ 'toonetown/android/android-23-samples' ]

end
