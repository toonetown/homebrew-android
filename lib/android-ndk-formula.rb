#################
# A basic formula for android NDKs
#################

require 'formula'

class AndroidNdkFormula < Formula
  def initialize(*)
    cls=self.class
    cls.extension or raise FormulaSpecificationError, "NDK requires an extension"

    cls.homepage 'http://developer.android.com/sdk/ndk/index.html'
    cls.url "http://dl.google.com/android/ndk/android-ndk-#{cls.version}-darwin-#{cls.plat}.#{cls.extension}"
    cls.keg_only 'NDKs are not linked by default so you can install multiple versions'
    cls.depends_on 'toonetown/android/android-sdk'
    cls.depends_on "toonetown/android/android-platform-tools"
    cls.depends_on "toonetown/android/android-build-tools"
    super
  end

  # An installer which will perform the appropriate installation steps
  def install
    cls=self.class
    bin.mkpath
    if cls.extension == "bin"
      system "chmod", "a+x", "./android-ndk-#{cls.version}-darwin-#{cls.plat}.bin"
      system "./android-ndk-#{cls.version}-darwin-#{cls.plat}.bin"
      prefix.install Dir["android-ndk-#{cls.version}/*"]
    else
      prefix.install Dir['*']
    end

    # Create a dummy script to launch the ndk apps
    ndk_exec = prefix+'ndk-exec.sh'
    ndk_exec.write <<-EOS.undent
      #!/bin/sh
      BASENAME=`basename $0`
      EXEC="#{prefix}/$BASENAME"
      test -f "$EXEC" && exec "$EXEC" "$@"
    EOS
    ndk_exec.chmod 0755
    %w[ndk-build ndk-gdb ndk-stack].each { |app| bin.install_symlink ndk_exec => app }
  end

  def caveats; <<-EOS.undent
    We agreed to the Android NDK License Agreement for you by downloading the NDK.
    If this is unacceptable you should uninstall.

    License information at:
    http://developer.android.com/sdk/terms.html

    Software and System requirements at:
    http://developer.android.com/sdk/ndk/index.html#requirements

    For more documentation on Android NDK, please check:
      #{prefix}/docs
    EOS
  end
  
  class << self
    attr_rw :extension
    
    def plat; MacOS.prefer_64_bit? ? 'x86_64' : 'x86'; end
    
    def sha1 sha_map={}
      @sha_map ||= sha_map
      super MacOS.prefer_64_bit? ? @sha_map[:x86_64] : @sha_map[:x86]
    end
  end
end
