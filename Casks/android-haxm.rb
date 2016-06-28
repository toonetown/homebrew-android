cask 'android-haxm' do
  version '6.0.3'
  sha256 :no_check

  url 'https://dl.google.com/android/repository/extras/intel/haxm-macosx_r6_0_3.zip'
  name 'Intel x86 Emulator Accelerator (HAXM installer)'
  homepage 'http://software.intel.com/'
  license :closed

  conflicts_with cask: 'intel-haxm'

  installer script:       'silent_install.sh',
            sudo:         true,
            must_succeed: true
  binary '.', target:     '/usr/local/var/lib/android-sdk/extras/intel/Hardware_Accelerated_Execution_Manager'

  postflight do
    File.open("#{staged_path}/source.properties", 'w') do |src_prop|
      src_prop.write <<-EOS.undent
        Extra.VendorId=intel
        Extra.Path=Hardware_Accelerated_Execution_Manager
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
