class Memberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :meetupid, null: false
      t.integer :userid, null: false
    end
  end
end
