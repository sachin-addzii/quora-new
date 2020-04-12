class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :title, null: false
      t.bigint :user_id, null: false
      t.bigint :topic_id, null: false

      t.timestamps
    end
    add_index :questions, :user_id
    add_index :questions, :topic_id
  end
end
