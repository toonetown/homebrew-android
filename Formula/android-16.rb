require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android16 < AndroidPlatformFormula
  url 'http://dl-ssl.google.com/android/repository/android-16_r05.zip'
  version '5'
  sha1 '12a5ce6235a76bc30f62c26bda1b680e336abd07'
  api_version '16'

  # Dependencies for docs, sources, samples, and system images
  sources [ 'toonetown/android/android-16-sources' ]
  samples [ 'toonetown/android/android-16-samples' ]
  sysimg  [
    'toonetown/android/android-16-sysimg-armv7',
    'toonetown/android/android-16-sysimg-i386',
  ]

end
