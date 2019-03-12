class CreatePlays < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
      t.string :type
      t.integer :game_id
      t.string :type_of_play
      t.string :team
      t.integer :player_id
      t.integer :quarter

      t.timestamps
    end
  end
end
