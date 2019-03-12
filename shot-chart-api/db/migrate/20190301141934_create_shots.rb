class CreateShots < ActiveRecord::Migration[5.2]
  def change
    create_table :shots do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :distance
      t.float :x_coordinate
      t.float :y_coordinate
      t.string :result
      t.string :description

      t.timestamps
    end
  end
end
