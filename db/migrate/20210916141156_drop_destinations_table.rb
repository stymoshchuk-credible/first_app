class DropDestinationsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :stations
    end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
