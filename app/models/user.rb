class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader, :default_url => 'no-avatar.jpg'

  validates :name, presence: true

  has_many :events_users, dependent: :delete_all
  has_many :events, through: :events_users
  has_many :events

  # validates_presence_of   :avatar

  #
  # before_save :default_values
  # def default_values
  #   self.editor ||= false
  # end

end
