require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android19Sources < AndroidSourcesFormula
  url 'https://dl.google.com/android/repository/sources-19_r02.zip'
  version '2'
  sha1 '433a1d043ef77561571250e94cb7a0ef24a202e7'
  api_version '19'
  target_directory 'sources'
  target_name      'android'
end
