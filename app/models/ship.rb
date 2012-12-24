class Ship < ActiveRecord::Base
  attr_accessible :cbf_bale, :dw, :gear, :name, :ship_type, :shipping_line_id

  validates :cbf_bale, :numericality => true
  validates :dw, :numericality => true

  belongs_to :shipping_line
  has_many :trips
end
