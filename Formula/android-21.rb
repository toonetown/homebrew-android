require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android21 < AndroidPlatformFormula
  url 'http://dl-ssl.google.com/android/repository/android-21_r01.zip'
  version '1'
  sha1 '218ca22f8cb744396fa11e65b8a3d2d1ae07f10e'
  api_version '21'

  # Dependencies for docs, sources, samples, and system images
  sources [ 'toonetown/android/android-21-sources' ]
  samples [ 'toonetown/android/android-21-samples' ]
  sysimg  [
    'toonetown/android/android-21-sysimg-armv7',
    'toonetown/android/android-21-sysimg-i386',
  ]

end
