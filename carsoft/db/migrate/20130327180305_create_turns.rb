class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.date :entry
      t.date :exit

      t.timestamps
    end
  end
end
