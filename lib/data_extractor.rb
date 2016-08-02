class DataExtractor
  class << self
    def parse_date(date)
      DateTime.parse(date).strftime("%d/%m/%Y")
    end
    
    def generated_date(data)
      parse_date(data["statement"]["generated"])
    end

    def bill_due_date(data)
      parse_date(data["statement"]["due"])
    end

    def bill_period_from_date(data)
      parse_date(data["statement"]["period"]["from"])
    end

    def bill_period_to_date(data)
      parse_date(data["statement"]["period"]["to"])
    end

    def bill_total_amount(data)
      data["total"]
    end

    def package_subscriptions(data)
      data["package"]["subscriptions"]
    end

    def package_total(data)
      data["package"]["total"]
    end

    def call_charges_data(data)
      data["callCharges"]["calls"]
    end

    def call_charges_total_amount(data)
      data["callCharges"]["total"]
    end

    def sky_store_rentals(data)
      data["skyStore"]["rentals"]
    end

    def sky_store_purchases(data)
      data["skyStore"]["buyAndKeep"]
    end

    def sky_store_total_amount(data)
      data["skyStore"]["total"]
    end
  end
end
