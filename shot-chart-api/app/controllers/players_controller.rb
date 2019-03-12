class PlayersController < ApplicationController
  def index
    response={}

    @players = Player.all
    @players.each do |player|
      player_data = {
        :plays => Play.where(player_id: player.id),
        :shots => Shot.where(player_id: player.id)
      }

      response[player.id] = player_data
    end

    render json: response
  end

  def show
    player = Player.find(params['player_id'])

    response = {
      :plays => Play.where(player_id: player.id),
      :shots => Shot.where(player_id: player.id)
    }

    reder json: response
  end
end
