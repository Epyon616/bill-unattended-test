require 'sinatra/base'
require 'date'
require_relative "./bill"
require_relative './views/helpers/view_helpers'

class Server < Sinatra::Base
  include ViewHelpers
  set :public_folder, File.dirname(__FILE__) + '/public'

  get "/" do
    @bill = Bill.new
    erb :bill
  end
end
