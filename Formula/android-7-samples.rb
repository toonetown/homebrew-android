require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android7Samples < AndroidSamplesFormula
  url 'https://dl-ssl.google.com/android/repository/samples-2.1_r01-linux.zip'
  version '01'
  sha1 '51e4907f60f248ede5c58b54ce7b6ae0b473e0ca'
  api_version '7'
end
