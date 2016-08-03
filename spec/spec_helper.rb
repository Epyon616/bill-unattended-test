require File.join(File.dirname(__FILE__), '..', 'server.rb')
require 'capybara/rspec'

Capybara.app = Server

RSpec.configure do |config|
  config.include Capybara::DSL
end
