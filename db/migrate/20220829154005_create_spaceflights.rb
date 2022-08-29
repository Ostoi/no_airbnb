class CreateSpaceflights < ActiveRecord::Migration[7.0]
  def change
    create_table :spaceflights do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.integer :duration
      t.text :overview
      t.string :cabin_class
      t.string :departure_location
      t.string :destination

      t.timestamps
    end
  end
end
