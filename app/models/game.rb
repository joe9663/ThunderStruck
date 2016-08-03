class Game < ApplicationRecord
  has_many :users
  has_many :shots
  has_many :ships


end
