class AddCommentsFk < ActiveRecord::Migration
  def change
    add_foreign_key :comments, :comments
  end
end
