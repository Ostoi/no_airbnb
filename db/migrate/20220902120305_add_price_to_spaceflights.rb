class AddPriceToSpaceflights < ActiveRecord::Migration[7.0]
  def change
    add_column :spaceflights, :price, :integer
  end
end
