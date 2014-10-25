require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android18Samples < AndroidSamplesFormula
  url 'https://dl-ssl.google.com/android/repository/samples-18_r01.zip'
  version '1'
  sha1 '73e879ce46c04a6e63ad1a9107018b4782945007'
  api_version '18'
end
