require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android22Samples < AndroidSamplesFormula
  url 'http://dl-ssl.google.com/android/repository/samples-22_r05.zip'
  version '5'
  sha1 'dbc5cc27b5d15acc25cd6b94b8c2971806b70bb0'
  api_version '22'
end
