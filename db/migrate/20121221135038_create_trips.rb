class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :description
      t.date :sailing_date_at_origin
      t.date :sailing_date_at_destination
      t.date :departure_date

      t.timestamps
    end
  end
end
