require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android23Samples < AndroidSamplesFormula
  url 'http://dl-ssl.google.com/android/repository/samples-23_r02.zip'
  version '2'
  sha1 '94d2857476987cfb7b18c8be61755c21b0a6e599'
  api_version '23'
  target_directory 'samples'
  target_name      'android'
end
