require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-ndk-formula')

class AndroidNdkR10e < AndroidNdkFormula
  version 'r10e'
  extension 'bin'
  sha1 :x86_64 => 'b57c2b9213251180dcab794352bfc9a241bf2557'
end
