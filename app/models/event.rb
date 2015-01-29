class Event < ActiveRecord::Base
  has_many :events_users, dependent: :delete_all
  has_many :users, through: :events_users
  belongs_to :event_category
  belongs_to :user
end
