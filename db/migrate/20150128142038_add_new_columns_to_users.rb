class AddNewColumnsToUsers < ActiveRecord::Migration
  def up
    add_column :users, :login, :string
    add_column :users, :place, :string
  end

  def down
    remove_column :users, :login
    remove_column :users, :place
  end
end
