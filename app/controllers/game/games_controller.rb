class GamesController < ApplicationController
  def new
  end

  def create
    @game = Game.create
    @game.ships

  end

end
