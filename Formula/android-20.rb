require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android20 < AndroidPlatformFormula
  url 'http://dl-ssl.google.com/android/repository/android-20_r01.zip'
  version '1'
  sha1 '928b1d181101a5bc06f739eb40501e1249dd4895'
  api_version '20'

  # Dependencies for docs, sources, samples, and system images
  sources [ 'toonetown/android/android-20-sources' ]
  samples [ 'toonetown/android/android-20-samples' ]
  sysimg  [
  ]

end
