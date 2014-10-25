require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android10 < AndroidPlatformFormula
  url 'https://dl-ssl.google.com/android/repository/android-2.3.3_r02-linux.zip'
  version '02'
  sha1 '887e37783ec32f541ea33c2c649dda648e8e6fb3'
  api_version '10'

  # Dependencies for docs, sources, samples, and system images
  samples [ 'toonetown/android/android-10-samples' ]
  sysimg  [
    'toonetown/android/android-10-sysimg-i386',
  ]

end
