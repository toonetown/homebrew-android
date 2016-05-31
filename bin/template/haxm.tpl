cask 'android-haxm' do
%%ARCHIVE_INFO%%
  license :closed

  conflicts_with cask: 'intel-haxm'

  installer script:       'silent_install.sh',
            sudo:         true,
            must_succeed: true
  binary '.', target:     '/usr/local/var/lib/android-sdk/extras/intel/Hardware_Accelerated_Execution_Manager'

  postflight do
    File.open("#{staged_path}/source.properties", 'w') do |src_prop|
      src_prop.write <<-EOS.undent
        Extra.VendorId=%%VENDOR%%
        Extra.Path=%%PATH%%
        Pkg.Revision=#{version}
      EOS
    end
  end

  uninstall script: {
                      sudo:         true,
                      must_succeed: false,
                      executable:   'silent_install.sh',
                      args:         ['-u'],
                    }
end
