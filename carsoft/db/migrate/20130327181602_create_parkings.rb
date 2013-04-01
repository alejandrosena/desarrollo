class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.integer :espace_available
      t.integer :location
      t.string :acronym
      t.references :area
      t.references :vehicle

      t.timestamps
    end
    add_index :parkings, :area_id
    add_index :parkings, :vehicle_id
  end
end
