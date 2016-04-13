require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android%%API_VERSION%% < AndroidPlatformFormula
%%ARCHIVE_INFO%%
  api_version "%%API_VERSION%%"
  target_directory "platforms"
  target_name      "android"

  # Dependencies for docs, sources, and samples
  sources [%%SOURCES%%]
  samples [%%SAMPLES%%]

  test do
    system "true"
  end
end
