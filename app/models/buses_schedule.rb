class BusesSchedule < ApplicationRecord
  belongs_to :bus
  belongs_to :schedule_station
  has_many :schedule_days

end
