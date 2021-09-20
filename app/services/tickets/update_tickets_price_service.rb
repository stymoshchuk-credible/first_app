#frozen_string_literal: true

class Tickets::UpdateTicketsPriceService

  def call
    Bus.all.each do |bus|
      bus.ticket_price += 1
      bus.save
      sleep(5)
    end
  end
end

# bus.update(ticket_price: bus.ticket_price+1)