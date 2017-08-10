class AddFavoriteToBooks < ActiveRecord::Migration

  def self.up
    add_column :books, :favorite, :boolean, null: false, default: true
  end

  def self.down
    remove_column :books, :favorite
  end
end
