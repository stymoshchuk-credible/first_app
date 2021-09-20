class DropTimetableTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :timetables
  end
end
