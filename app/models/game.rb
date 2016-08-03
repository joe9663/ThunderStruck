class Game < ApplicationRecord
  belongs_to :player_1, class_name: "User"
  belongs_to :player_2, class_name: "User", optional: true
  has_many :shots
  has_many :ships
  has_many :destroyers
  has_many :bonnscotts
  has_many :batteships
  has_many :cruisers
  has_many :patrol_boats

end
