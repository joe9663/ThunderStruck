class CreateCells < ActiveRecord::Migration[5.0]
  def change
    create_table :cells do |t|
      t.string :position, null: false
      t.integer :ship_id
      t.boolean :hit_value
      t.integer :gameboard_id, null: false

      t.timestamps null: false
    end
  end
end
