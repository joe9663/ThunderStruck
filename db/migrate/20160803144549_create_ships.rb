class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.string :name, null: false
      t.integer :hp, null: false
      t.string  :position, null: false
      t.integer :user_id, foreign_key: true
      t.integer :game_id, foreign_key: true
      t.string  :type

      t.timestamps null: false
    end
  end
end
