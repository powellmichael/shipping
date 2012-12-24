class ShippingLineOffice < ActiveRecord::Base
  attr_accessible :area_address, :shipping_line_id, :port_id

  belongs_to :shipping_line
  belongs_to :port
end
