require_relative '../server.rb'
require 'rspec'
require 'rack/test'

describe 'Server' do
  include Rack::Test::Methods

  def app
    Server
  end

  it 'loads the home page' do
    get "/"
    expect(last_response).to be_ok
  end
end
