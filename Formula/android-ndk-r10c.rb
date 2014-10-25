require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-ndk-formula')

class AndroidNdkR10c < AndroidNdkFormula
  version 'r10c'
  extension 'bin'
  sha1 :x86_64 => 'a136ca2ad87771422c2cfa9474196cd29ffd9bb1',
       :x86    => 'b083f9a1a4dd66d55ced8ea41eea6a0a91ea1ac9'
end
