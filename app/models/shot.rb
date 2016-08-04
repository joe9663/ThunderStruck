class Shot < ApplicationRecord
  belongs_to :user
  belongs_to :game

  def x_cord
  end

  def y_cord
  end

  def hit?
    targets = current_game.ships.where.not(user_id: current_user.id)
    hit_ship = targets.select {|ship| ship.position.include?(self.position)}
    if hit_ship.length == 1
      hit_ship[0].hp -= 1
      return true
    else
      return false
    end
  end

end
