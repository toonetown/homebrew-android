require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android12 < AndroidPlatformFormula
  url 'https://dl-ssl.google.com/android/repository/android-3.1_r03-linux.zip'
  version '03'
  sha1 '4a50a6679cd95bb68bb5fc032e754cd7c5e2b1bf'
  api_version '12'

  # Dependencies for docs, sources, samples, and system images
  samples [ 'toonetown/android/android-12-samples' ]
  sysimg  [
  ]

end
