class Ticket < ApplicationRecord
  belongs_to :bus

  def bus_method
    @m = bus.tickets
  end
  def need_tickets
    @n_t = self.to_a.map(&:bus_id)
  end
end
