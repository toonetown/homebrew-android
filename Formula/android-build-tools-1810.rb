# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidBuildTools1810 < AndroidToolFormula
  url 'https://dl.google.com/android/repository/build-tools_r18.1-macosx.zip'
  version '18.1.0'
  sha1 '16ddb299b8b43063e5bb3387ec17147c5053dfd8'

  depends_on "toonetown/android/android-sdk"
  depends_on "toonetown/android/android-platform-tools"

  def install
    (prefix/"build-tools"/version).install Dir["*"]
    install_tools prefix/"build-tools"/version

    link_sdk_dir "build-tools"
  end
  
end
