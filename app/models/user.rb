class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  validates :name, presence: true
  #
  # has_many :events_users, dependent: :delete_all
  has_many :events, through: :events_users
  has_many :events
  has_many :articles
  has_many :comments

  # validates_presence_of   :avatar

  #
  # before_save :default_values
  # def default_values
  #   self.editor ||= false
  # end

end
