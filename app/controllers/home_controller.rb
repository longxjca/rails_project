class HomeController < ApplicationController
  def index
    @films = Film.order("title")
    @people = Person.order("name")
    @planets = Planet.order("name")
    @species = Species.order("name")
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @people = Person.where("name LIKE ?", wildcard_search)
    @films = Film.where("title LIKE ?", wildcard_search)
    @planets = Planet.where("name LIKE ?", wildcard_search)
    @species = Species.where("name LIKE ?", wildcard_search)
  end
end
