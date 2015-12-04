require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis19 < AndroidPlatformFormula
  url 'http://dl.google.com/android/repository/google_apis-19_r17.zip'
  version '17'
  sha1 '880be35cb93a74bbd872822f14e8bf1beb674cdc'
  api_version '19'
  target_directory 'add-ons'
  target_name      'addon-google_apis-google'

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=19
    Pkg.Revision=#{version}
  EOS
  
  depends_on "toonetown/android/android-19"
end
