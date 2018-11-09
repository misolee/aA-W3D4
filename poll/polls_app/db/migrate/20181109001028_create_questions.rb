class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :q_text, null: false
      t.timestamps
    end
    
    add_index :questions, :q_text
  end
end
