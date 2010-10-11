require File.join(File.dirname(__FILE__), '..', 'config', 'config')
require File.join(File.dirname(__FILE__), '..', 'api', 'service')

require 'rubygems'
require 'sinatra'
require 'rack/test'
require 'rspec'
require 'rspec/autorun'
require 'mongoid'

# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

Rspec.configure do |config|
  config.after :suite do
    Mongoid.master.collections.select do |collection|
      collection.name !~ /system/
    end.each(&:drop)
  end
end