class AddPortIdToShippingLineOffices < ActiveRecord::Migration
  def change
    add_column :shipping_line_offices, :port_id, :integer
  end
end
