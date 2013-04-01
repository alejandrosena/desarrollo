class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.date :date
      t.time :time
      t.integer :amount
      t.boolean :movement
      t.string :destination
      t.string :procedensia
      t.string :center
      t.references :vehicle
      t.references :porter
      t.references :material
      t.references :user
      t.references :team

      t.timestamps
    end
    add_index :registers, :vehicle_id
    add_index :registers, :porter_id
    add_index :registers, :material_id
    add_index :registers, :user_id
    add_index :registers, :team_id
  end
end
