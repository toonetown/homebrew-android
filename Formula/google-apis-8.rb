require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis8 < AndroidPlatformFormula
  url 'http://dl.google.com/android/repository/google_apis-8_r02.zip'
  version '2'
  sha1 '3079958e7ec87222cac1e6b27bc471b27bf2c352'
  api_version '8'
  target_directory 'add-ons'
  target_name      'addon-google_apis-google'

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=8
    Pkg.Revision=#{version}
  EOS
  
  depends_on "toonetown/android/android-8"
end
