class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :place
      t.date :date
      t.text :description
      t.integer :members_number

      t.timestamps null: false
    end
  end
end
