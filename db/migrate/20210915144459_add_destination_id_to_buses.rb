class AddDestinationIdToBuses < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :buses, :destination, index: true
  end
end
