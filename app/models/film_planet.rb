class FilmPlanet < ApplicationRecord
  belongs_to :planet
  belongs_to :film
end
