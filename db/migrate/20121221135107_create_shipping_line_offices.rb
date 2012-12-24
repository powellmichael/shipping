class CreateShippingLineOffices < ActiveRecord::Migration
  def change
    create_table :shipping_line_offices do |t|
      t.string :area_address

      t.timestamps
    end
  end
end
