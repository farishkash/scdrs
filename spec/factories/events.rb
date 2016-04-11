FactoryGirl.define do
  factory :event do
    event_name "Event One"
    event_date_from "06/01/2016"
    event_date_to "06/15/2016"
    event_deadline "05/15/2016"
    event_price_before_deadline 200
    event_price_after_deadline 250

  end
end
