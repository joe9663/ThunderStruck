class User < ApplicationRecord
  has_many :ships
  has_many :shots
  has_many :games

  has_secure_password

  validates :name, {uniqueness: true}

end
