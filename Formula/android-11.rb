require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android11 < AndroidPlatformFormula
  url 'https://dl-ssl.google.com/android/repository/android-3.0_r02-linux.zip'
  version '02'
  sha1 '2c7d4bd13f276e76f6bbd87315fe27aba351dd37'
  api_version '11'

  # Dependencies for docs, sources, and samples
  samples [ 'toonetown/android/android-11-samples' ]

end
