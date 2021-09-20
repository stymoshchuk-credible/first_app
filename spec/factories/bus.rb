FactoryBot.define do
  factory :bus do
    bus_name { 'Express' }
    number_of_seats { 5 }
    ticket_price { 13 }
  end

  # factory :ticket do
  #   name { 'Helen' }
  #   seat_id_seq { 2 }
  #   address { 'San-L' }
  #   price_paid { 13 }
  #   email_address { "s@gm" }
  #   bus
  # end

  # def bus_with_tickets(tickets_count: 5)
  #   FactoryBot.create(:bus) do |bus|
  #     FactoryBot.create_list(:ticket ,tickets_count, bus: bus)
  #   end
  # end

  end