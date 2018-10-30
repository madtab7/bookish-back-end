class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :user_id
      t.string :title
      t.string :author
      t.text :description
      t.string :imgURL
      t.boolean :read
      t.boolean :want_to_read

      t.timestamps
    end
  end
end
