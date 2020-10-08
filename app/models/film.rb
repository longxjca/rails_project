class Film < ApplicationRecord
  has_many :person_films
  has_many :people, through: :person_films

  has_many :film_planets
  has_many :planets, through: :film_planets

  validates :title, uniqueness: true
  validates :title, presence: true
end
