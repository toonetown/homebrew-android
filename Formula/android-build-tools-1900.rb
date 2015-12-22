# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidBuildTools1900 < AndroidToolFormula
  url 'https://dl.google.com/android/repository/build-tools_r19-macosx.zip'
  version '19.0.0'
  sha1 '86ec1c12db1bc446b7bcaefc5cc14eb361044e90'

  depends_on "toonetown/android/android-sdk"
  depends_on "toonetown/android/android-platform-tools"

  def install
    (prefix/"build-tools"/version).install Dir["*"]
    install_tools prefix/"build-tools"/version

    link_sdk_dir "build-tools"
  end
  
end
