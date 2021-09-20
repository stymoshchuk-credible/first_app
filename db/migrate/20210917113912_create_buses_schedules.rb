class CreateBusesSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :buses_schedules do |t|
      t.integer :bus_id
      t.string :day
      t.integer :schedule_id

      t.timestamps
    end
    add_index :buses_schedules, :bus_id
    add_index :buses_schedules, :schedule_id
  end
end
