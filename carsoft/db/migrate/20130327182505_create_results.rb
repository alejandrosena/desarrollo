class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :answer
      t.references :question
      t.references :user

      t.timestamps
    end
    add_index :results, :answer_id
    add_index :results, :question_id
    add_index :results, :user_id
  end
end
