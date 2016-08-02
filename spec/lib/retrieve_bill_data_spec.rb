require_relative '../../lib/retrieve_bill_data'
require_relative '../support/test_data'

describe "RetrieveBillData" do
  it "returns a hash of data via http request" do
    data = RetrieveBillData.call
    expect(data).to eq TestData.data
  end
end
