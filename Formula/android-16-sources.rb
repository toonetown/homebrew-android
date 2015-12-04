require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android16Sources < AndroidSourcesFormula
  url 'https://dl-ssl.google.com/android/repository/sources-16_r02.zip'
  version '2'
  sha1 '0f83c14ed333c45d962279ab5d6bc98a0269ef84'
  api_version '16'
  target_directory 'sources'
  target_name      'android'
end
