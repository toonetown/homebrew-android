require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis17 < AndroidPlatformFormula
  url 'http://dl.google.com/android/repository/google_apis-17_r04.zip'
  version '4'
  sha1 'a076be0677f38df8ca5536b44dfb411a0c808c4f'
  api_version '17'
  target_directory 'add-ons'
  target_name      'addon-google_apis-google'

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=17
    Pkg.Revision=#{version}
  EOS
  
  depends_on "toonetown/android/android-17"
end
