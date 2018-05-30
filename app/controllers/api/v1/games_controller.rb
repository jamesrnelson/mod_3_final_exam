class Api::V1::GamesController < ApplicationController
  def show
    render json: @game_presentation = GamePresenter.new(params[:id])
  end
end
