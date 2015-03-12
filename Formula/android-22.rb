require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22 < AndroidPlatformFormula
  url 'http://dl-ssl.google.com/android/repository/android-22_r01.zip'
  version '1'
  sha1 '6df7006cf184df4e7928d7e28dadf7567503d6f7'
  api_version '22'

  # Dependencies for docs, sources, samples, and system images
  sources [ 'toonetown/android/android-22-sources' ]
  samples [ 'toonetown/android/android-22-samples' ]
  sysimg  [
    'toonetown/android/android-22-sysimg-i386',
    'toonetown/android/android-22-sysimg-armv7',
  ]

end
