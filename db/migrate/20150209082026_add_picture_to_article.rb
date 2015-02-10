class AddPictureToArticle < ActiveRecord::Migration
  def up
    add_column :articles, :cover, :string
  end

  def down
    remove_column :users, :cover
  end
end
