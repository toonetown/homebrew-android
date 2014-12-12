# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidM2repository < AndroidToolFormula
  url 'http://dl-ssl.google.com/android/repository/android_m2repository_r10.zip'
  version '10'
  sha1 '28e4411d619f15e5d3774bd56aacfe19b1878025'
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/android/m2repository").install Dir["*"]
    install_tools prefix/"extras/android/m2repository"

    link_sdk_dir "extras/android"
  end
  
end
