require_relative "./lib/retrieve_bill_data"
require_relative "./lib/data_extractor"

class Bill
  attr_reader :data,
              :generated_date,
              :bill_due_date,
              :bill_period_from_date,
              :bill_period_to_date,
              :bill_total_amount,
              :package_subscriptions,
              :package_total,
              :call_charges_data,
              :call_charges_total_amount,
              :sky_store_rentals,
              :sky_store_purchases,
              :sky_store_total_amount

  def initialize(retrieve_bill_data = RetrieveBillData, extractor = DataExtractor)
    @data = retrieve_bill_data.call
    @generated_date = extractor.generated_date(data)
    @bill_due_date = extractor.bill_due_date(data)
    @bill_period_from_date = extractor.bill_period_from_date(data)
    @bill_period_to_date = extractor.bill_period_to_date(data)
    @bill_total_amount = extractor.bill_total_amount(data)
    @package_subscriptions = extractor.package_subscriptions(data)
    @package_total = extractor.package_total(data)
    @call_charges_data = extractor.call_charges_data(data)
    @call_charges_total_amount = extractor.call_charges_total_amount(data)
    @sky_store_rentals = extractor.sky_store_rentals(data)
    @sky_store_purchases = extractor.sky_store_purchases(data)
    @sky_store_total_amount = extractor.sky_store_total_amount(data)
  end
end
