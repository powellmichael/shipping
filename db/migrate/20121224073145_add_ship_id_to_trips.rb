class AddShipIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :ship_id, :integer
  end
end
