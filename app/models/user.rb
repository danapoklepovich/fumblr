class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  validates :username, uniqueness: true, null: false, length: { minimum: 2 }

  has_many :follower_records, class_name: 'Follow', foreign_key: 'following_id'
  has_many :followers, through: :follower_records

  has_many :following_records, class_name: 'Follow', foreign_key: 'follower_id'
  has_many :followings, through: :following_records

  has_one_attached :avatar

  has_many :user_posts
  has_many :posts, through: :user_posts
end
