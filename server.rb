require 'sinatra'

class Server < Sinatra::Base
  get "/" do
    "Lets get the party started!"
  end
end
