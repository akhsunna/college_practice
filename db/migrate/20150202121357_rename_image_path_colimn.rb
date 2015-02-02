class RenameImagePathColimn < ActiveRecord::Migration
  def change
    rename_column :users, :image_path, :avatar
  end
end
