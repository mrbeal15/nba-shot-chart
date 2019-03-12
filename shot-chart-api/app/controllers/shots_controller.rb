class ShotsController < ApplicationController
  def index
    if params['player_id']
      response = Shot.where(player_id: params['player_id'])
    else
      response = Shot.where(game_id: params['game_id'])
    end

    render json: response
  end
end
