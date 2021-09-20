class CreateScheduleDays < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_days do |t|
      t.integer :schedule_id
      t.datetime :date

      t.timestamps
    end
    add_index :schedule_days, :schedule_id
  end
end
