class AddEventCategoryRefToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :event_category, index: true
    add_foreign_key :events, :event_categories
  end
end
