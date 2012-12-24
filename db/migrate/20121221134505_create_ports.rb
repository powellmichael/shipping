class CreatePorts < ActiveRecord::Migration
  def change
    create_table :ports do |t|
      t.string :port_name
      t.string :city
      t.string :state
      t.string :country
      t.string :ocean

      t.timestamps
    end
  end
end
