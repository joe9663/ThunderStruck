class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end


  def logged_in?
    !!current_user
  end

  def current_game
    @current_game ||= Game.find_by_id(session[:game_id])
  end

  def position(x_cord, y_cord)
    x_cord + y_cord
  end

  def winner?
    player1 = current_game.player_1
    player2 = current_game.player_2
    if player1.ships.all?{|ship| ship.sunk?}
      return "Player 2 Wins!"
    elsif player2.ships.all?{|ship| ship.sunk?}
      return "Player 1 Wins!"
    else
      return "The Battle Continues"
  end

end
