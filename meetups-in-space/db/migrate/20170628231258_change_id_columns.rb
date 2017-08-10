class ChangeIdColumns < ActiveRecord::Migration
  def change
    rename_column :memberships, :meetupid, :meetup_id
    rename_column :memberships, :userid, :user_id
  end
end
