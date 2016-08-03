class CreateGameboards < ActiveRecord::Migration[5.0]
  def change
    create_table :gameboards do |t|
      t.integer :player_id, null: false
      t.integer :game_id, null: false

      t.timestamps null: false
    end
  end
end
