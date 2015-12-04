require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class GoogleApis%%API_VERSION%% < AndroidPlatformFormula
%%ARCHIVE_INFO%%
  api_version '%%API_VERSION%%'
  target_directory 'add-ons'
  target_name      'addon-google_apis-google'

  src_properties <<-EOS.undent
    Addon.NameId=google_apis
    Addon.VendorId=google
    AndroidVersion.ApiLevel=%%API_VERSION%%
    Pkg.Revision=#{version}
  EOS
  
  depends_on "toonetown/android/android-%%API_VERSION%%"
end
