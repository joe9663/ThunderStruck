class CreateGameUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :game_users do |t|
      t.integer :game_id, foreign_key: true
      t.integer :user_id, foreign_key

      t.timestamps
    end
  end
end
