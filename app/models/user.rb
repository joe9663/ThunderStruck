class User < ApplicationRecord
  has_many :ships
  has_many :shots
  has_many :game_users
  has_many :games, through: :game_users


  has_secure_password

  validates :name, {uniqueness: true}

end
