require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android21Samples < AndroidSamplesFormula
  url 'http://dl-ssl.google.com/android/repository/samples-21_r03.zip'
  version '3'
  sha1 'e58fe71c90cbd180863991a5f351c5553da68a6d'
  api_version '21'
end
