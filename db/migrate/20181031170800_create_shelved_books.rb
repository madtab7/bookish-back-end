class CreateShelvedBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :shelved_books do |t|
      t.integer :book_id
      t.integer :user_id
      t.boolean :read
      t.boolean :want_to_read
      t.boolean :recommended
      t.integer :friend_id

      t.timestamps
    end
  end
end
