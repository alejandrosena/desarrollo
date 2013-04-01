class CreateTypeUsers < ActiveRecord::Migration
  def change
    create_table :type_users do |t|
      t.string :name
      t.string :acronyms
      t.string :description

      t.timestamps
    end
  end
end
