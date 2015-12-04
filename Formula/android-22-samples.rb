require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22Samples < AndroidSamplesFormula
  url 'http://dl-ssl.google.com/android/repository/samples-22_r06.zip'
  version '6'
  sha1 '1f6f4a81a8f19a9b9c9bf4adb64a91330a861c7f'
  api_version '22'
  target_directory 'samples'
  target_name      'android'
end
