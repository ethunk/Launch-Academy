class Meetups < ActiveRecord::Migration
  def change
    create_table :meetups do |table|
      table.string :date, null: false
      table.string :name, null: false
      table.string :description, null: false
      table.string :location, null: false
    end
  end

end
