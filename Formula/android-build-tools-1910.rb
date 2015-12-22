# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidBuildTools1910 < AndroidToolFormula
  url 'https://dl.google.com/android/repository/build-tools_r19.1-macosx.zip'
  version '19.1.0'
  sha1 '0d11aae3417de1efb4b9a0e0a7855904a61bcec1'

  depends_on "toonetown/android/android-sdk"
  depends_on "toonetown/android/android-platform-tools"

  def install
    (prefix/"build-tools"/version).install Dir["*"]
    install_tools prefix/"build-tools"/version

    link_sdk_dir "build-tools"
  end
  
end
