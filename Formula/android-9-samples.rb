require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android9Samples < AndroidSamplesFormula
  url 'https://dl-ssl.google.com/android/repository/samples-2.3_r01-linux.zip'
  version '01'
  sha1 '36f7dd6c8b5dbb50b3cf3e3ac5209f3fe55db2aa'
  api_version '9'
  target_directory 'samples'
  target_name      'android'
end
