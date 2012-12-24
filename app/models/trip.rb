class Trip < ActiveRecord::Base
  attr_accessible :departure_date, :description, :sailing_date_at_destination, :sailing_date_at_origin, :ship_id, :origin_port_id, :destination_port_id

  belongs_to :ship
  belongs_to :origin_port, :class_name => "Port", :foreign_key => "origin_port_id"
  belongs_to :destination_port, :class_name => "Port", :foreign_key => "destination_port_id"
end
