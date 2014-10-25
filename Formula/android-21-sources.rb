require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android21Sources < AndroidSourcesFormula
  url 'http://dl-ssl.google.com/android/repository/sources-21_r01.zip'
  version '1'
  sha1 '137a5044915d32bea297a8c1552684802bbc2e25'
  api_version '21'
end
