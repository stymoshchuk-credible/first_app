class CreateTimetable < ActiveRecord::Migration[6.1]
  def change
    create_table :timetables do |t|
      t.integer :station_id
      t.integer :bus_id
      t.datetime :time

      t.timestamps
    end
    add_index :timetables, :station_id
    add_index :timetables, :bus_id
  end
end
