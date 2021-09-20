class RemoveTime < ActiveRecord::Migration[6.1]

  def self.up
    remove_columns :stations, :time
  end

end
