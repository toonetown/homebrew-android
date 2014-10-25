require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android19 < AndroidPlatformFormula
  url 'http://dl-ssl.google.com/android/repository/android-19_r04.zip'
  version '4'
  sha1 '2ff20d89e68f2f5390981342e009db5a2d456aaa'
  api_version '19'

  # Dependencies for docs, sources, samples, and system images
  sources [ 'toonetown/android/android-19-sources' ]
  samples [ 'toonetown/android/android-19-samples' ]
  sysimg  [
    'toonetown/android/android-19-sysimg-armv7',
    'toonetown/android/android-19-sysimg-i386',
  ]

end
