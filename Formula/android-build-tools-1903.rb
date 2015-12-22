# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidBuildTools1903 < AndroidToolFormula
  url 'https://dl.google.com/android/repository/build-tools_r19.0.3-macosx.zip'
  version '19.0.3'
  sha1 '651cf8754373b2d52e7f6aab2c52eabffe4e9ea4'

  depends_on "toonetown/android/android-sdk"
  depends_on "toonetown/android/android-platform-tools"

  def install
    (prefix/"build-tools"/version).install Dir["*"]
    install_tools prefix/"build-tools"/version

    link_sdk_dir "build-tools"
  end
  
end
