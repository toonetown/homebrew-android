require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23 < AndroidPlatformFormula
  url 'https://dl.google.com/android/repository/android-23_r02.zip'
  version '2'
  sha1 'a71706896fe8159015c1c02f63af6ea03ceeb79e'
  api_version '23'
  target_directory 'platforms'
  target_name      'android'

  # Dependencies for docs, sources, and samples
  sources [ 'toonetown/android/android-23-sources' ]

end
