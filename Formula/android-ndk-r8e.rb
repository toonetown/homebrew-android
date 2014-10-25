require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-ndk-formula')

class AndroidNdkR8e < AndroidNdkFormula
  version 'r8e'
  extension 'tar.bz2'
  sha1 :x86_64 => '8c8f0d7df5f160c3ef82f2f4836cbcaf18aabf68',
       :x86    => '60536b22b3c09015a4c7072097404a9a1316b242'
end
