require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-sdk-formula")

class Android%%API_VERSION%%Sources < AndroidSourcesFormula
%%ARCHIVE_INFO%%
  api_version "%%API_VERSION%%"
  target_directory "sources"
  target_name      "android"

  test do
    system "true"
  end
end
