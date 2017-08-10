class Categorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :category_id
      t.integer :book_id
    end
  end
end
