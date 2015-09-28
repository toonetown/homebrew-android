require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android2 < AndroidPlatformFormula
  url 'https://dl-ssl.google.com/android/repository/android-1.1_r1-macosx.zip'
  version '1'
  sha1 'e21dbcff45b7356657449ebb3c7e941be2bb5ebe'
  api_version '2'

  # Dependencies for docs, sources, and samples

end
