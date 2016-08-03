class Ship < ApplicationRecord
  belongs_to :user
  belongs_to :game


  def sunk?
    if self.hp == 0
      return true
    end
  end

  def hit?
    if @shot.position == self.position
      return true
    end
  end

end
