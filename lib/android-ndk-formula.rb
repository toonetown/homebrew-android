#################
# A basic formula for android NDKs
#################

require 'formula'

class AndroidNdkFormula < Formula
  def initialize(*)
    cls=self.class

    cls.homepage 'https://developer.android.com/ndk/index.html'
    cls.depends_on 'toonetown/android/android-sdk'
    cls.depends_on "toonetown/android/android-platform-tools"
    super
  end

  # An installer which will perform the appropriate installation steps
  def install
    bin.mkpath
    prefix.install Dir['*']

    # Create a dummy script to launch the ndk apps
    ndk_exec = prefix+'ndk-exec.sh'
    ndk_exec.write <<-EOS.undent
      #!/bin/sh
      BASENAME=`basename $0`
      EXEC="#{prefix}/$BASENAME"
      test -f "$EXEC" && exec "$EXEC" "$@"
    EOS
    ndk_exec.chmod 0755
    %w[ndk-build ndk-depends ndk-gdb ndk-stack ndk-which].each { |app| bin.install_symlink ndk_exec => app }
  end

  def caveats; <<-EOS.undent
    We agreed to the Android NDK License Agreement for you by downloading the NDK.
    If this is unacceptable you should uninstall.

    License information at:
    http://developer.android.com/sdk/terms.html

    For more documentation on Android NDK, please check:
      #{prefix}/docs
    EOS
  end  
end
