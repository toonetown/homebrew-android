require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis4 < AndroidPlatformFormula
  url 'http://dl.google.com/android/repository/google_apis-4_r02.zip'
  version '2'
  sha1 '9b6e86d8568558de4d606a7debc4f6049608dbd0'
  api_version '4'
  target_directory 'add-ons'
  target_name      'addon-google_apis-google'

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=4
    Pkg.Revision=#{version}
  EOS
  
  depends_on "toonetown/android/android-4"
end
