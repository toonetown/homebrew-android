require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android8 < AndroidPlatformFormula
  url 'https://dl-ssl.google.com/android/repository/android-2.2_r03-linux.zip'
  version '03'
  sha1 '231262c63eefdff8fd0386e9ccfefeb27a8f9202'
  api_version '8'

  # Dependencies for docs, sources, samples, and system images
  samples [ 'toonetown/android/android-8-samples' ]
  sysimg  [
  ]

end
