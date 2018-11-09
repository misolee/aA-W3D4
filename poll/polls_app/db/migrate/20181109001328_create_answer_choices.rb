class CreateAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.string :a_text, null: false
      t.integer :question_id, null: false
      t.timestamps
    end
    add_index :answer_choices, :a_text
  end
end
