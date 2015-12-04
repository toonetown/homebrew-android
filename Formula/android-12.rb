require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android12 < AndroidPlatformFormula
  url 'https://dl-ssl.google.com/android/repository/android-3.1_r03-linux.zip'
  version '03'
  sha1 '4a50a6679cd95bb68bb5fc032e754cd7c5e2b1bf'
  api_version '12'
  target_directory 'platforms'
  target_name      'android'

  # Dependencies for docs, sources, and samples
  samples [ 'toonetown/android/android-12-samples' ]

end
