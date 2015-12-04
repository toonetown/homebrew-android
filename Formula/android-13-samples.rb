require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android13Samples < AndroidSamplesFormula
  url 'https://dl-ssl.google.com/android/repository/samples-3.2_r01-linux.zip'
  version '01'
  sha1 '078bcf1abc1cb8921f3fa482c252963a782bed60'
  api_version '13'
  target_directory 'samples'
  target_name      'android'
end
