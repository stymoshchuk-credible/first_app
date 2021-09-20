class Timetable < ApplicationRecord
  belongs_to :bus
  belongs_to :station
end
