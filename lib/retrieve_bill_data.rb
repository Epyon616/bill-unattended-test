require 'http'

class RetrieveBillData
  class << self
    def call
      data_url = HTTP.get("http://safe-plains-5453.herokuapp.com/bill.json")
      JSON.parse(data_url)
    end
  end
end
