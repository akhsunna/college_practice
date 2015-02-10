class AddColumnRedToUser < ActiveRecord::Migration
  def up
    add_column :users, :editor, :boolean
  end

  def down
    remove_column :users, :editor
  end
end
