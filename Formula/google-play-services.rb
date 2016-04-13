# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula")

class GooglePlayServices < AndroidToolFormula
  desc "Google Play services client library and sample code"
  url "https://dl.google.com/android/repository/google_play_services_8487000_r29.zip"
  version "29"
  sha1 "2c6c23f0a0911221d3613e43593180cba4540ce8"
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/google/google_play_services").install Dir["*"]
    install_tools prefix/"extras/google/google_play_services"

    src_prop = prefix/"extras/google/google_play_services/source.properties"
    src_prop.delete if src_prop.exist?
    src_prop.write <<-EOS.undent
      Extra.VendorId=google
      Extra.Path=google_play_services
      Pkg.Revision=#{version}
    EOS

    link_sdk_dir "extras/google"
  end

  test do
    system "true"
  end
end
