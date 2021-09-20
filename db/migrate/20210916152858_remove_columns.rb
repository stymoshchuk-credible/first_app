class RemoveColumns < ActiveRecord::Migration[6.1]
  def self.up
    remove_columns :stations, :station_id, :bus_id
  end

end
