class ShippingLine < ActiveRecord::Base
  attr_accessible :address, :city, :company_name, :contact_email, :contact_person, :contact_phone, :country, :description, :state

  validates :contact_email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  validates :contact_phone, :numericality => true	

  has_many :ships
  has_many :shipping_line_offices
end
