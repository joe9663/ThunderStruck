class Cell < ApplicationRecord
  belongs_to :ship
  belongs_to :gameboard


  validates :ship_id, uniqueness: {scope: [:position, :gameboard_id]}
  validates :position, presence: true

end
