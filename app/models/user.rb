class User < ApplicationRecord
  has_many :ships
  has_many :shots
  has_many :player_1_games, class_name: "Game", foreign_key: "player_1_id"
  has_many :player_2_games, class_name: "Game", foreign_key: "player_2_id"

  has_secure_password

  validates :name, {uniqueness: true}

end
