require 'sinatra'
require 'sinatra/static_assets'
require 'date'
require_relative "./bill"

class Server < Sinatra::Base
  register Sinatra::StaticAssets

  get "/" do
    @bill = Bill.new
    erb :bill
  end
end
