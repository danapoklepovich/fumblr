class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  validates :username, uniqueness: true, null: false

  has_many :follower_records, class_name: 'Follow', foreign_key: 'following_id'
  has_many :followers, through: :follower_records

  has_many :following_records, class_name: 'Follow', foreign_key: 'follower_id'
  has_many :followings, through: :following_records
end
