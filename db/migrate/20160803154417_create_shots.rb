class CreateShots < ActiveRecord::Migration[5.0]
  def change
    create_table :shots do |t|
      t.integer :user_id, null:false
      t.integer :game_id, null:false
      t.string :position, null:false

      t.timestamps null:false
    end
  end
end
