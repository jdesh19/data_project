class GamesController < ApplicationController
  def index
    @q = Game.ransack(params[:q])
    @games = @q.result(distinct: true).includes(:genre, :platform, :publisher).page(params[:page]).per(10)
  end
  def show
    @game = Game.find(params[:id])
  end
end
