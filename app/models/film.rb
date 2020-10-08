class Film < ApplicationRecord
  has_many :person_films
  has_many :people, through: :person_films

  validates :title, uniqueness: true
  validates :title, presence: true
end
