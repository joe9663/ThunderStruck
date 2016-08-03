class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer  :player_1_id
      t.integer  :player_2_id

      t.timestamps null: false
    end
  end
end
