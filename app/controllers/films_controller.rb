class FilmsController < ApplicationController
  def index
    @films = Film.order(:title)
  end

  def show
    @film = Film.find(params[:id])
  end
end
