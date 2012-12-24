class AddOriginPortIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :origin_port_id, :integer
  end
end
