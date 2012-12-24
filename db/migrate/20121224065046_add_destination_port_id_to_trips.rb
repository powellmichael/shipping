class AddDestinationPortIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :destination_port_id, :integer
  end
end
