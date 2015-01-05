require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-ndk-formula')

class AndroidNdkR10d < AndroidNdkFormula
  version 'r10d'
  extension 'bin'
  sha1 :x86_64 => '6b89cb0c84e2d2bd802a5b78540327c1b3c2d7b8',
       :x86    => 'fc1f9593eb9669076c25381322a1386869ac02f0'
end
