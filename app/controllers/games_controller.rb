class GamesController < ApplicationController

  def index
  end

  def new
  end

  def shots
    position = position(params[:shot][:x_cord],params[:shot][:y_cord])
    shot = Shot.new(user_id: current_user.id, game_id: current_game.id, position: position)
    if shot.save
      @game = current_game
      redirect_to @game
    end
  end

  def edit
  end

  def create
    user = current_user
    @game = Game.new(player_1_id: current_user.id)
    if @game.save
      generate_ships(user.id, @game.id)
      session[:game_id] = @game.id
      session[:player] = 1
      redirect_to @game
    else
      flash[:notice] = "Could Not Create Game, For Some Weird Ass Reason"
      redirect_to root_url
    end
  end

  def show
    @turn = turn
    @shot = Shot.new
    @player_1_shots = calculate_player_1_shots

    unless current_game.player_2.nil?
      @player_2_shots = calculate_player_2_shots
    else
      @player_2_shots = 0
    end

    if session[:player] == 1
      @player = 1
    else
      @player = 2
    end
  end

private

  def generate_ships(user_id, game_id)
    Bonnscott.create(name: "The Dread Bonn Scott", hp: 6, user_id: user_id, game_id: game_id, position: "A2-A3-A4-A5-A6-A7")
    Crystalship.create(name: "Battleship", hp: 4, user_id: user_id, game_id: game_id, position: "B5-C5-D5-E5")
    Cruiser.create(name: "Cruiser", hp: 3, user_id: user_id, game_id: game_id, position: "G3-H3-I3")
    Destroyer.create(name: "Destroyer", hp: 3, user_id: user_id, game_id: game_id, position: "F7-F8-F9")
    Patrolboat.create(name: "Patrol Boat", hp: 2, user_id: user_id, game_id: game_id, position: "I9-J9")
  end


  def turn
    if current_game.shots.all.count.even?
      return "Player 1's Turn"
    else
      return "Player 2's Turn"
    end
  end

  def calculate_player_1_shots
    shots = current_game.player_1.shots.where(game_id: current_game.id)
    shots_positions = shots.map {|shot| shot.position}
    shots_positions.join("-")
  end

  def calculate_player_2_shots
    shots = current_game.player_2.shots.where(game_id: current_game.id)
    shots_positions = shots.map {|shot| shot.position}
    shots_positions.join("-")
  end
end

