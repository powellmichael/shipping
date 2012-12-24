class AddShippingLineIdToShippingLineOffices < ActiveRecord::Migration
  def change
    add_column :shipping_line_offices, :shipping_line_id, :integer
  end
end
