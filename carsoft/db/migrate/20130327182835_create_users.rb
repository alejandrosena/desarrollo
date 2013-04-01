class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :confirm_password
      t.string :identification
      t.string :name
      t.boolean :male
      t.boolean :female
      t.string :phone
      t.string :movil
      t.string :location
      t.references :document
      t.references :rh
      t.references :role
      t.references :type_user

      t.timestamps
    end
    add_index :users, :document_id
    add_index :users, :rh_id
    add_index :users, :role_id
    add_index :users, :type_user_id
  end
end
