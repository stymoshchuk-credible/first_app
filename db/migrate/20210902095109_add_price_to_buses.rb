class AddPriceToBuses < ActiveRecord::Migration[6.1]
  def change
    add_column :buses, :ticket_price, :integer
  end
end
