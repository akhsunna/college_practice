class RenameLoginColumn < ActiveRecord::Migration
  def change
    rename_column :users, :login, :name
  end
end
