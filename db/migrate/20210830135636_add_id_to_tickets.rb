class AddIdToTickets < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :tickets, :bus, index: true
  end
end
