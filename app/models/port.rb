class Port < ActiveRecord::Base
  attr_accessible :city, :country, :ocean, :port_name, :state

  validates :port_name, :uniqueness => true

  has_many :shipping_line_offices
  has_many :trips
end
