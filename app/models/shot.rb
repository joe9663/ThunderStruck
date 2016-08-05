class Shot < ApplicationRecord
  belongs_to :user
  belongs_to :game

  def x_cord
  end

  def y_cord
  end

  def hit?(game, user)
    targets = game.ships.where.not(user_id: user.id)
    hit_ship = targets.select {|ship| ship.position.include?(self.position)}
    if hit_ship.length == 1
      return true
    else
      return false
    end
  end

    def hurts_the_ships(game, user)
    targets = game.ships.where.not(user_id: user.id)
    hit_ship = targets.select {|ship| ship.position.include?(self.position)}
    if hit_ship.length == 1
      hit_ship[0].hp -= 1
      hit_ship[0].save
    end
  end

end
