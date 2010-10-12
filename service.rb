require 'bundler'
Bundler.setup

ENV['RACK_ENV'] ||= 'development'

require 'sinatra'
require File.join(File.dirname(__FILE__), 'config', 'config')
require File.join(File.dirname(__FILE__), 'router')