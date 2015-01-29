class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :events_users, :users
    add_foreign_key :events_users, :events
  end
end
