# This file is autogenerated by the generate-sdks.sh script

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class GoogleM2repository < AndroidToolFormula
  url 'http://dl-ssl.google.com/android/repository/google_m2repository_r25.zip'
  version '25'
  sha1 '10316852a8713e19490ee25e56beb2c00cc0b147'
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/google/m2repository").install Dir["*"]
    install_tools prefix/"extras/google/m2repository"

    srcProp = prefix/"extras/google/m2repository/source.properties"
    srcProp.delete if srcProp.exist?
    srcProp.write <<-EOS.undent
      Extra.VendorId=google
      Extra.Path=m2repository
      Pkg.Revision=#{version}
    EOS

    link_sdk_dir "extras/google"
  end
  
end