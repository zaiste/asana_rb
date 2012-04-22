require "bundler"
Bundler.setup

require 'httparty'
require 'json'
require 'webmock'
require 'webmock/rspec'

Dir[File.expand_path(File.dirname(__FILE__) + "/../lib/**/*.rb")].each { |f| require f }
