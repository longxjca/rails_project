class Person < ApplicationRecord
  belongs_to :species
  belongs_to :planet
  has_many :personfilms
  has_many :films, through: :personfilms

  validates :name, uniqueness: true
  validates :name, presence: true
end
