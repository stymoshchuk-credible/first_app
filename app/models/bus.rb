class Bus < ApplicationRecord
  has_many :tickets, dependent: :destroy
  has_many :buses_schedules

  def available_seats
    all_seats = (1..number_of_seats).to_a.map(&:to_s)
    sold_seats = tickets&.map(&:seat_id_seq)
    all_seats - sold_seats
  end

  def rest_seats
    available_seats.count
  end

end
