FactoryBot.define do
  factory :ticket do
    name {' dd' }
    seat_id_seq { 1}
    address { 'SanMore' }
    price_paid { 13 }
    email_address { "s@gm" }
    bus
  end
end
