class CreateBuses < ActiveRecord::Migration[6.1]
  def change
    create_table :buses do |t|
      t.string :bus_name
      t.integer :number_of_seats

      t.timestamps
    end
  end
end
