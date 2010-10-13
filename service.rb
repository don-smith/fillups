require 'bundler'
Bundler.setup

ENV['RACK_ENV'] ||= 'development'
require File.join(File.dirname(__FILE__), 'config', 'config')

require 'router'