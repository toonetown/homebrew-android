require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android14Samples < AndroidSamplesFormula
  url 'https://dl-ssl.google.com/android/repository/samples-14_r02.zip'
  version '2'
  sha1 '1312c22ab0b650e26835cc3945d4ff8cea183416'
  api_version '14'
end
