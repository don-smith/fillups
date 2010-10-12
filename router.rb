require 'sinatra'
require File.join(File.dirname(__FILE__), 'lib', 'fillup')

get '/' do
  Fillup.all().to_json
end
