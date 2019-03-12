class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :home_team
      t.string :away_team
      t.string :date_of_game

      t.timestamps
    end
  end
end
