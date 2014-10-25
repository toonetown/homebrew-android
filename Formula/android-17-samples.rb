require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android17Samples < AndroidSamplesFormula
  url 'https://dl-ssl.google.com/android/repository/samples-17_r01.zip'
  version '1'
  sha1 '12d58cb26503610fc05bd7618c434cc6f983bc41'
  api_version '17'
end
