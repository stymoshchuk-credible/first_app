class CreateScheduleStations < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_stations do |t|
      t.integer :station_id
      t.time :arrival
      t.time :departure

      t.timestamps
    end
    add_index :schedule_stations, :station_id
  end
end
