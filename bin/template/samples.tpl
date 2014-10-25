require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android%%API_VERSION%%Samples < AndroidSamplesFormula
%%ARCHIVE_INFO%%
  api_version '%%API_VERSION%%'
end
