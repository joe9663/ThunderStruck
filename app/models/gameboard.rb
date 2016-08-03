class Gameboard < ApplicationRecord
  belongs_to :player
  belongs_to :game
  has_many :cells


end
