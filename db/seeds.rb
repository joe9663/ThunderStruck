# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    User.create!(name: "Black Bart", password: "plunder")
    User.create!(name: "Calico Jack", password: "plunder")

    Game.create!(player_1_id: 1, player_2_id: 2)

    Bonnscott.create!(name: "The Dread Bonn Scott", hp: 6, user_id: 1, game_id: 1, position: "A2-A3-A4-A5-A6-A7")
    Crystalship.create!(name: "Crystalship", hp: 4, user_id: 1, game_id: 1, position: "B5-C5-D5-E5")
    Cruiser.create!(name: "Cruiser", hp: 3, user_id: 1, game_id: 1, position: "G3-H3-I3")
    Destroyer.create!(name: "Destroyer", hp: 3, user_id: 1, game_id: 1, position: "F7-F8-F9")
    Patrolboat.create!(name: "Patrol Boat", hp: 2, user_id: 1, game_id: 1, position: "I9-J9")

    Bonnscott.create!(name: "The Dread Bonn Scott", hp: 6, user_id: 2, game_id: 1, position: "A2-A3-A4-A5-A6-A7")
    Crystalship.create!(name: "Battleship", hp: 4, user_id: 2, game_id: 1, position: "B5-C5-D5-E5")
    Cruiser.create!(name: "Cruiser", hp: 3, user_id: 2, game_id: 1, position: "G3-H3-I3")
    Destroyer.create!(name: "Destroyer", hp: 3, user_id: 2, game_id: 1, position: "F7-F8-F9")
    Patrolboat.create!(name: "Patrol Boat", hp: 2, user_id: 2, game_id: 1, position: "I9-J9")
