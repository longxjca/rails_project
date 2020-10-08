class Person < ApplicationRecord
  belongs_to :species
  belongs_to :planet
  has_many :person_films
  has_many :films, through: :person_films

  validates :name, uniqueness: true
  validates :name, presence: true
end
