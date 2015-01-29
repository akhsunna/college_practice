class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.date :date
      t.string :description
      t.integer :comments_number

      t.timestamps null: false
    end
  end
end
