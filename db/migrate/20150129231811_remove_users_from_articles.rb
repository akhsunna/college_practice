class RemoveUsersFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :users_id, :integer
  end
end
