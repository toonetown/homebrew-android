require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android%%API_VERSION%%Sysimg%%SHORT_ABI%% < AndroidSysimgFormula
%%ARCHIVE_INFO%%
  api_version '%%API_VERSION%%'
  abi '%%LONG_ABI%%'
  sysimg_tag '/default'
end
