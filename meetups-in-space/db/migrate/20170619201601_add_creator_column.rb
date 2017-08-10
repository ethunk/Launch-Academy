class AddCreatorColumn < ActiveRecord::Migration
  def self.up
    add_column :memberships, :creator, :boolean, null: false
  end

  def self.down
    remove_column :memberships, :creator
  end
end
