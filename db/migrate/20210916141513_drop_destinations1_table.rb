class DropDestinations1Table < ActiveRecord::Migration[6.1]
  def up
    drop_table :destinations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
