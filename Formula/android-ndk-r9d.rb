require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-ndk-formula')

class AndroidNdkR9d < AndroidNdkFormula
  version 'r9d'
  extension 'tar.bz2'
  sha1 :x86_64 => 'd0a8471555be57899c67aa6b61db5bca9db2e8ea',
       :x86    => '91ac410a24ad6d1fc67b5161294a4a5cb78b2975'
end
