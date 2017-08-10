class AddRatingToBooks < ActiveRecord::Migration

  def self.up
    add_column :books, :rating, :numeric, scale: 100
  end

end
