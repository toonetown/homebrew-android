require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android10Samples < AndroidSamplesFormula
  url 'https://dl.google.com/android/repository/samples-2.3.3_r01-linux.zip'
  version '01'
  sha1 '93b0c3f3bdf5b07f1f115100b4954f0665297a0d'
  api_version '10'
  target_directory 'samples'
  target_name      'android'
end
