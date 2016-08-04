class Shot < ApplicationRecord
  belongs_to :user
  belongs_to :game

  def x_cord
  end

  def y_cord
  end

end
