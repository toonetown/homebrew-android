# This file is autogenerated by the generate-sdks.sh script

require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "android-tool-formula") unless defined?(android_tool_formula)

class AndroidPlatformTools < AndroidToolFormula
  url "https://dl.google.com/android/repository/platform-tools_r26.0.2-darwin.zip"
  version "26.0.2"
  sha1 "161ca26461d4caec6cbbef513891fcd04a4fcf52"

  depends_on "toonetown/android/android-sdk"

  def install
    (prefix/"platform-tools").install Dir["*"]
    install_tools prefix/"platform-tools"

    link_sdk_dir "platform-tools"
  end

  test do
    system "true"
  end
end
