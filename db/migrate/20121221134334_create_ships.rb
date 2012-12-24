class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.string :type
      t.integer :dw
      t.integer :cbf_bale
      t.string :gear

      t.timestamps
    end
  end
end
