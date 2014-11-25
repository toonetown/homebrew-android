require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android20Samples < AndroidSamplesFormula
  url 'http://dl-ssl.google.com/android/repository/samples-20_r03.zip'
  version '3'
  sha1 '8b1290b0b707827808392e8178094a68dfb51a14'
  api_version '20'
end
