require_relative '../bill'
require_relative '../lib/retrieve_bill_data'
require_relative './support/test_data'

describe Bill do
  let(:test_data) {TestData.data}

  before { allow(RetrieveBillData).to receive(:call).and_return test_data }

  it "gets a hash of data via http request" do
    data = subject.data
    expect(data).to eql test_data
    expect(data).to be_a Hash
  end

  it "gets a generated date" do
    generated_date = subject.generated_date
    parsed_date = DateTime.parse(test_data["statement"]["generated"]).strftime("%d/%m/%Y")
    expect(generated_date).to eql parsed_date
  end

  it "gets a bill due date" do
    bill_due_date = subject.bill_due_date
    parsed_date = DateTime.parse(test_data["statement"]["due"]).strftime("%d/%m/%Y")
    expect(bill_due_date).to eql parsed_date
  end

  it "gets a bill period from date" do
    bill_period_from_date = subject.bill_period_from_date
    parsed_date = DateTime.parse(test_data["statement"]["period"]["from"]).strftime("%d/%m/%Y")
    expect(bill_period_from_date).to eql parsed_date
  end

  it "gets a bill period to date" do
    bill_period_to_date = subject.bill_period_to_date
    parsed_date = DateTime.parse(test_data["statement"]["period"]["to"]).strftime("%d/%m/%Y")
    expect(bill_period_to_date).to eql parsed_date
  end

  it "gets a bill total amount" do
    bill_total_amount = subject.bill_total_amount
    expect(bill_total_amount).to eql test_data["total"]
  end

  it "gets the package subscriptions" do
    package_subscriptions = subject.package_subscriptions
    expect(package_subscriptions).to eql test_data["package"]["subscriptions"]
  end

  it "gets the package total" do
    package_total = subject.package_total
    expect(package_total).to eql test_data["package"]["total"]
  end

  it "gets call charges data" do
    call_charges_data = subject.call_charges_data
    expect(call_charges_data).to eql test_data["callCharges"]["calls"]
  end

  it "gets call chages total amount" do
    call_charges_total_amount = subject.call_charges_total_amount
    expect(call_charges_total_amount).to eql test_data["callCharges"]["total"]
  end

  it "gets Sky Store rentals" do
    sky_store_rentals = subject.sky_store_rentals
    expect(sky_store_rentals).to eql test_data["skyStore"]["rentals"]
  end

  it "gets Sky Store Purchases" do
    sky_store_purchases = subject.sky_store_purchases
    expect(sky_store_purchases).to eql test_data["skyStore"]["buyAndKeep"]
  end

  it "gets Sky Store total amount" do
    sky_store_total_amount = subject.sky_store_total_amount
    expect(sky_store_total_amount).to eql test_data["skyStore"]["total"]
  end
end
