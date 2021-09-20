FactoryBot.define do
  factory :timetable do
    bus_id { 1 }
    destination_id { 1 }
    departure { "2021-09-16 15:02:16" }
    arrival { "2021-09-16 15:02:16" }
  end
end
