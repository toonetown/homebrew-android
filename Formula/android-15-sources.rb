require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android15Sources < AndroidSourcesFormula
  url 'https://dl-ssl.google.com/android/repository/sources-15_r02.zip'
  version '2'
  sha1 'e5992a5747c9590783fbbdd700337bf0c9f6b1fa'
  api_version '15'
end
