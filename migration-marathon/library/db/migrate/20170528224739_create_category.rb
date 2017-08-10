class CreateCategory < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category, unique: true
      t.integer :book_id
    end
  end
end
