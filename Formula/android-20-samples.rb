require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android20Samples < AndroidSamplesFormula
  url 'http://dl-ssl.google.com/android/repository/samples-20_r02.zip'
  version '2'
  sha1 '4b906c46057ee8f502b4f27c23670fd87a49d6ff'
  api_version '20'
end
