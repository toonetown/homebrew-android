require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android19Samples < AndroidSamplesFormula
  url 'http://dl-ssl.google.com/android/repository/samples-19_r06.zip'
  version '6'
  sha1 '19593662771934b0b1e3be56ed18d13e6489bcd4'
  api_version '19'
end
