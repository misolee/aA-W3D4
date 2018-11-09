class AddForeignKeyAndIndex < ActiveRecord::Migration[5.1]
  def change
    add_column :polls, :author_id, :integer, null: false
    add_column :questions, :poll_id, :integer, null: false
    
    add_index :polls, :author_id
    add_index :questions, :poll_id
  end
end
