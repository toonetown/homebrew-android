require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android8Samples < AndroidSamplesFormula
  url 'https://dl-ssl.google.com/android/repository/samples-2.2_r01-linux.zip'
  version '01'
  sha1 'd16d8bf2dd84cedf73b98b948d66461c8f19d6fb'
  api_version '8'
  target_directory 'samples'
  target_name      'android'
end
