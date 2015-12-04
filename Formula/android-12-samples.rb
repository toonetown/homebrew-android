require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android12Samples < AndroidSamplesFormula
  url 'https://dl-ssl.google.com/android/repository/samples-3.1_r01-linux.zip'
  version '01'
  sha1 'df0ace37cbca73373fe94080f94c71557cac73a7'
  api_version '12'
  target_directory 'samples'
  target_name      'android'
end
