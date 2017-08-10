class CreateCheckout < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :price, :decimal, precision: 5, scale: 2
      t.integer :book_id
    end
  end
end
