require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android16Samples < AndroidSamplesFormula
  url 'https://dl-ssl.google.com/android/repository/samples-16_r01.zip'
  version '1'
  sha1 'dce3a2d41db50a381ef47ee8bddbe928520e685e'
  api_version '16'
  target_directory 'samples'
  target_name      'android'
end
