require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android17Sources < AndroidSourcesFormula
  url 'https://dl-ssl.google.com/android/repository/sources-17_r01.zip'
  version '1'
  sha1 '6f1f18cd2d2b1852d7f6892df9cee3823349d43a'
  api_version '17'
end
