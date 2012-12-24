class CreateShippingLines < ActiveRecord::Migration
  def change
    create_table :shipping_lines do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :contact_person
      t.string :contact_email
      t.integer :contact_phone
      t.string :company_name
      t.string :description

      t.timestamps
    end
  end
end
