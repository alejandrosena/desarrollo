class CreateChips < ActiveRecord::Migration
  def change
    create_table :chips do |t|
      t.string :code
      t.references :program

      t.timestamps
    end
    add_index :chips, :program_id
  end
end
