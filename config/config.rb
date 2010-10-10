require 'yaml'
require 'mongoid'

file_name = File.join(File.dirname(__FILE__), "mongoid.yml")
@settings = YAML.load(ERB.new(File.new(file_name).read).result)

ENV['RACK_ENV'] ||= 'test'

Mongoid.configure do |config|
  config.from_hash(@settings[ENV['RACK_ENV']])
end