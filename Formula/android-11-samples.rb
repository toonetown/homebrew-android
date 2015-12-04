require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android11Samples < AndroidSamplesFormula
  url 'https://dl-ssl.google.com/android/repository/samples-3.0_r01-linux.zip'
  version '01'
  sha1 '3749ace584631270268d65bb1d0ad61b0d691682'
  api_version '11'
  target_directory 'samples'
  target_name      'android'
end
