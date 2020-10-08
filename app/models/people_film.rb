class PeopleFilm < ApplicationRecord
  belongs_to :person
  belongs_to :film
end
