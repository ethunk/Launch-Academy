class AddAuthorToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :author, :string, null: false
  end

  def self.down
    remove_column :books, :author
  end
end
