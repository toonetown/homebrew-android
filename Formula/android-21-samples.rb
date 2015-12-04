require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android21Samples < AndroidSamplesFormula
  url 'http://dl-ssl.google.com/android/repository/samples-21_r04.zip'
  version '4'
  sha1 '3a08d37e97f567f5f629a06a9012f89b05c5ad8a'
  api_version '21'
  target_directory 'samples'
  target_name      'android'
end
