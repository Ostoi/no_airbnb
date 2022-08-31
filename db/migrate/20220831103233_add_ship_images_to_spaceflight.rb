class AddShipImagesToSpaceflight < ActiveRecord::Migration[7.0]
  def change
    add_column :spaceflights, :ship_image, :string
  end
end
