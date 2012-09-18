require 'yaml'

CONFIG = YAML.load(ERB.new(IO.read("#{Rails.root.to_s}/config/codearmory.yaml")).result)[Rails.env].symbolize_keys
