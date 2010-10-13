require 'yaml'
require 'mongoid'

# Add to $LOADPATH
$: << File.join(File.dirname(__FILE__), '..')
$: << File.join(File.dirname(__FILE__), '..', 'lib')

file_name = File.join(File.dirname(__FILE__), "mongoid.yml")
@settings = YAML.load(ERB.new(File.new(file_name).read).result)

Mongoid.configure do |config|
  config.from_hash(@settings[ENV['RACK_ENV']])
end
