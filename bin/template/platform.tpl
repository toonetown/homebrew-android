require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-sdk-formula')

class Android%%API_VERSION%% < AndroidPlatformFormula
%%ARCHIVE_INFO%%
  api_version '%%API_VERSION%%'

  # Dependencies for docs, sources, samples, and system images
  sources [ %%SOURCES%% ]
  samples [ %%SAMPLES%% ]
  sysimg  [
%%SYSIMG%%
  ]

end
