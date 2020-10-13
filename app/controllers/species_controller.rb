class SpeciesController < ApplicationController
  def index
    @species = Species.order(:name)
  end

  def show
    @specie = Species.find(params[:id])
  end
end
