class GamesController < ApplicationController
  def index
    response={}

    @games = Game.all
    @games.each do |game|
      game_data = {
        :plays => Play.where(game_id: game.id),
        :shots => Shot.where(game_id: game.id)
      }

      response[game.id] = game_data
    end

    render json: response
  end

  def show
    game = Game.find(params['id'])

    response = {
      :plays => Play.where(game_id: game.id),
      :shots => Shot.where(game_id: game.id)
    }

    render json: response
  end
end
