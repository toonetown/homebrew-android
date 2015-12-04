require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android14Sources < AndroidSourcesFormula
  url 'https://dl-ssl.google.com/android/repository/sources-14_r01.zip'
  version '1'
  sha1 'eaf4ed7dcac46e68516a1b4aa5b0d9e5a39a7555'
  api_version '14'
  target_directory 'sources'
  target_name      'android'
end
