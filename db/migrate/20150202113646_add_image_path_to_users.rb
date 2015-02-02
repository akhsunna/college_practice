class AddImagePathToUsers < ActiveRecord::Migration
  def up
    add_column :users, :image_path, :string
  end

  def down
    remove_column :users, :image_path
  end
end
