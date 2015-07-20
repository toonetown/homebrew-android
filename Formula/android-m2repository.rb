# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidM2repository < AndroidToolFormula
  url 'http://dl-ssl.google.com/android/repository/android_m2repository_r16.zip'
  version '16'
  sha1 'c9bca7dbdd7b654ed471069ecb364a2b5683b07c'
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/android/m2repository").install Dir["*"]
    install_tools prefix/"extras/android/m2repository"

    link_sdk_dir "extras/android"
  end
  
end
