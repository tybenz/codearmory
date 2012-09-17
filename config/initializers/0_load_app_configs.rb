CONFIG = YAML.load(ERB.new(IO.read("#{Rails.root.to_s}/config/codearmory.yml")).result)[Rails.env].symbolize_keys
