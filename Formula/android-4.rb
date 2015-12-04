require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android4 < AndroidPlatformFormula
  url 'https://dl-ssl.google.com/android/repository/android-1.6_r03-macosx.zip'
  version '03'
  sha1 'bdafad44f5df9f127979bdb21a1fdd87ee3cd625'
  api_version '4'
  target_directory 'platforms'
  target_name      'android'

  # Dependencies for docs, sources, and samples

end
