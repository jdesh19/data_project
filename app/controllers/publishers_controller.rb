class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all
  end
  def show
    @publisher = Publisher.find(params[:id])
    @games = @publisher.games
  end
end
