class DropShipImageFromSpaceflights < ActiveRecord::Migration[7.0]
  def change
    remove_column :spaceflights, :ship_image, :string
  end
end
