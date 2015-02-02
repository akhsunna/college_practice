class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  has_many :events_users, dependent: :delete_all
  has_many :events, through: :events_users
  has_many :events
end
