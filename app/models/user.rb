class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :login, presence: true

  has_many :events_users, dependent: :delete_all
  has_many :events, through: :events_users
  has_many :events
end
