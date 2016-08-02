require 'http'

class RetrieveBillData
  def self.call
    data_url = HTTP.get("http://safe-plains-5453.herokuapp.com/bill.json")
    JSON.parse(data_url)
  end
end
