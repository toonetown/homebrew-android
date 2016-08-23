#################
# A basic tool-based formula (which gets linked correctly)
#################
require Pathname(__FILE__).realpath.dirname.join('../lib', 'no-compat') unless defined?(android_no_compat)

class AndroidToolFormula < Formula
  def sdk_dir; var/"lib/android-sdk"; end
    
  def initialize(*)
    cls=self.class
    # This little dance with cleanup_links is because there is no way to execute 
    # stuff on uninstall/unlink...so instead, we just run it at the beginning
    # and end of whenever we need to.
    cls.cleanup_links sdk_dir
    ObjectSpace.define_finalizer(self, cls.finalize(sdk_dir))

    cls.homepage 'http://developer.android.com/index.html'
    super
  end
    
  def link_all_into src, dest
    Dir.glob(src/'*').select{ |f| File.symlink? dest/File.basename(f) }.each{ |f| 
      File.unlink dest/File.basename(f)
    }
    dest.install_symlink Dir[src/'*']
  end

  def link_sdk_dir dir
    link_all_into prefix/dir, sdk_dir/dir
  end
    
  class << self
    def finalize dir; proc { cleanup_links dir }; end
    def cleanup_links dir
      Dir.glob(dir/"**/*").select{ |f| File.symlink? f }.select{ |f|
        begin; ! Pathname.new(f).realpath; rescue; true; end
      }.each { |f| File.unlink f }
    end
  end
    
  def install_tools path
    Dir[path/"*"].select{ |f| File.file? f and File.executable? f }.each do |tool|
      (bin/File.basename(tool)).write <<-EOS.undent
        #!/bin/bash
        TOOL="#{tool}"
        exec "$TOOL" "$@"
      EOS
    end
  end
end

def android_tool_formula; end
