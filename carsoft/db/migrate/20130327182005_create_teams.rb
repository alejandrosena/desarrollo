class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :type
      t.string :brand
      t.string :serial
      t.string :description
      t.references :porter
      t.references :user

      t.timestamps
    end
    add_index :teams, :porter_id
    add_index :teams, :user_id
  end
end
