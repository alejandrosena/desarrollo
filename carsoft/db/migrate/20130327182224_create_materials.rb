class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.string :description
      t.references :type_material
      t.references :user

      t.timestamps
    end
    add_index :materials, :type_material_id
    add_index :materials, :user_id
  end
end
