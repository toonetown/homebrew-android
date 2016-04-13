cask "android-haxm" do
%%ARCHIVE_INFO%%
  sha256 :no_check
  conflicts_with :cask => "intel-haxm"
  
  installer :script => "silent_install.sh",
            :sudo => true,
            :must_succeed => true

  artifact ".", :target => "/usr/local/var/lib/android-sdk/extras/%%VENDOR%%/%%PATH%%"

  postflight do
    File.open("#{staged_path}/source.properties", "w") { |src_prop|
      src_prop.write <<-EOS.undent
        Extra.VendorId=%%VENDOR%%
        Extra.Path=%%PATH%%
        Pkg.Revision=#{version}
      EOS
    }
  end

  uninstall :script => {
                        :sudo => true,
                        :must_succeed => false,
                        :executable => "silent_install.sh",
                        :args => ["-u"]
                       }
end
