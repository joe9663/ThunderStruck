class Game < ApplicationRecord
  has_many :game_users
  has_many :users, through: :game_users
  has_many :shots
  has_many :ships
  has_many :destroyers
  has_many :bonnscotts
  has_many :batteships
  has_many :cruisers
  has_many :patrol_boats

end
