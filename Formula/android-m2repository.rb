# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula") unless defined?(android_tool_formula)

class AndroidM2repository < AndroidToolFormula
  desc "Local Maven repository for Support Libraries"
  url "https://dl.google.com/android/repository/android_m2repository_r45.zip"
  version "45.0.0"
  sha1 "88df24cc778f3cd6464e605dc82aed5bd2dfbed4"
  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"extras/android/m2repository").install Dir["*"]
    install_tools prefix/"extras/android/m2repository"

    src_prop = prefix/"extras/android/m2repository/source.properties"
    src_prop.delete if src_prop.exist?
    src_prop.write <<-EOS.undent
      Extra.VendorId=android
      Extra.Path=m2repository
      Pkg.Revision=#{version}
    EOS

    link_sdk_dir "extras/android"
  end

  test do
    system "true"
  end
end
