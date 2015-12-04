#################
# A basic formula for android SDK parts
#################

require 'pathname'
require Pathname(__FILE__).realpath.dirname.join('../lib', 'android-tool-formula')

class AndroidSdkFormula < AndroidToolFormula
  def initialize(*)
    cls=self.class
    cls.api_version or raise FormulaSpecificationError, "Requires an api_version"
    cls.target_directory or raise FormulaSpecificationError, "Requires a target_directory"
    cls.target_name or raise FormulaSpecificationError, "Requires a target_name"

    cls.depends_on "toonetown/android/android-sdk"
    cls.depends_on "toonetown/android/android-platform-tools"

    super
  end

  def install
    cls=self.class
    (prefix/"#{cls.target_directory}/#{cls.target_name}-#{cls.api_version}").install Dir["*"]
    install_tools prefix/"#{cls.target_directory}/#{cls.target_name}-#{cls.api_version}"
    if cls.src_properties and not cls.src_properties.empty?
      srcProp = prefix/"#{cls.target_directory}/#{cls.target_name}-#{cls.api_version}/source.properties"
      srcProp.delete if srcProp.exist?
      srcProp.write cls.src_properties
    end
    link_sdk_dir cls.target_directory
  end

  class << self
    attr_rw :api_version, :target_directory, :target_name, :src_properties
  end
end
  
# The main platform formula
class AndroidPlatformFormula < AndroidSdkFormula
  def initialize(*)
    cls=self.class

    if cls.sources and not cls.sources.empty?
      cls.option "with-sources", "Includes the source for the platform"
      cls.build.without? "sources" or cls.sources.each { |d| cls.depends_on d }
    end
    if cls.samples and not cls.samples.empty?
      cls.option "with-samples", "Includes the samples for the platform"
      cls.build.without? "samples" or cls.samples.each { |d| cls.depends_on d }
    end

    super
  end

  class << self
    attr_rw :sources, :samples
  end
end

# A formula for sources
class AndroidSourcesFormula < AndroidSdkFormula
  def initialize(*); super; end
end

# A formula for samples
class AndroidSamplesFormula < AndroidSdkFormula
  def initialize(*); super; end
end

# A formula for system images
class AndroidSysimgFormula < AndroidToolFormula
  def initialize(*)
    cls=self.class
    cls.api_version or raise FormulaSpecificationError, "Requires an api_version"
    cls.abi or raise FormulaSpecificationError, "Requires an abi"
    cls.sysimg_tag or raise FormulaSpecificationError, "Requires a sysimg_tag"

    cls.depends_on "toonetown/android/android-sdk"
    cls.depends_on "toonetown/android/android-platform-tools"
    cls.depends_on "toonetown/android/android-#{cls.api_version}"

    super
  end

  def install
    cls=self.class
    (prefix/"system-images/android-#{cls.api_version}#{cls.sysimg_tag}/#{cls.abi}").install Dir["*"]
    install_tools prefix/"system-images/android-#{cls.api_version}#{cls.sysimg_tag}/#{cls.abi}"
    if cls.src_properties and not cls.src_properties.empty?
      srcProp = prefix/"system-images/android-#{cls.api_version}#{cls.sysimg_tag}/#{cls.abi}/source.properties"
      srcProp.delete if srcProp.exist?
      srcProp.write cls.src_properties
    end
    link_sdk_dir "system-images/android-#{cls.api_version}#{cls.sysimg_tag}"
  end

  class << self
    attr_rw :api_version, :abi, :sysimg_tag, :src_properties
  end
end

