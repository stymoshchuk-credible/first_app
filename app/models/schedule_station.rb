class ScheduleStation < ApplicationRecord
  has_one :station
  has_many :buses_schedules
end
