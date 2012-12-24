class AddShippingLineIdToShips < ActiveRecord::Migration
  def change
    add_column :ships, :shipping_line_id, :integer
  end
end
