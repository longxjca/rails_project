class HomeController < ApplicationController
  def index
    @films = Film.order("title")
    @people = Person.order("name")
    @planets = Planet.order("name")
    @species = Species.order("name")
  end
end
