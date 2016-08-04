class GamesController < ApplicationController

  def index
  end

  def new
  end

  def edit
  end

  def create
    user = current_user
    game = Game.new(player_1_id: current_user.id)
    if game.save
      generate_ships(user.id, game.id)
      render :show
    else
      flash[:notice] = "Could Not Create Game, For Some Weird Ass Reason"
      redirect_to root_url
    end
  end

  def show

  end

  def generate_ships(user_id, game_id)
    Bonnscott.create(name: "The Dread Bonn Scott", hp: 6, user_id: user_id, game_id: game_id, position: "A2-A3-A4-A5-A6-A7")
    Crystalship.create(name: "Battleship", hp: 4, user_id: user_id, game_id: game_id, position: "B5-C5-D5-E5")
    Cruiser.create(name: "Cruiser", hp: 3, user_id: user_id, game_id: game_id, position: "G3-H3-I3")
    Destroyer.create(name: "Destroyer", hp: 3, user_id: user_id, game_id: game_id, position: "F7-F8-F9")
    Patrolboat.create(name: "Patrol Boat", hp: 2, user_id: user_id, game_id: game_id, position: "I9-J9")
  end



end
