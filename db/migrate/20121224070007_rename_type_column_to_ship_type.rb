class RenameTypeColumnToShipType < ActiveRecord::Migration
  def up
  	rename_column :ships, :type, :ship_type
  end

  def down
  	rename_column :ships, :ship_type, :type
  end
end
