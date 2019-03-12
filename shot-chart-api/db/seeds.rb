# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach(Rails.root.join('db', 'csv', 'sample-combined-pbp-stats.csv'), :headers => true) do |row|
  game = Game.find_or_create_by(id: row['game_id'])
  player = Player.find_or_create_by(name: row['player'])

  if row['result'] == 'made' || row['result'] == 'missed'
    Shot.create(game_id: game.id, player_id: player.id, distance: row['shot_distance'], x_coordinate: row['converted_x'], y_coordinate: row['converted_y'], result: row['result'], description: row['description'], quarter: row['period'])
  else
    Play.create(game_id: game.id, type_of_play: row['type'], team: row['team'], player_id: player.id, quarter: row['period'])
  end
end
