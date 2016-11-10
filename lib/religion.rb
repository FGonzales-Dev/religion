require "religion/version"
require "yaml"

module Religion
  
  YML_RELIGION = YAML.load_file(File.join(File.dirname(__FILE__),"religion", "yml", "religion.yml"))


  RELIGION= YML_RELIGION.map { |_, v| v }.flatten.compact.sort

end
