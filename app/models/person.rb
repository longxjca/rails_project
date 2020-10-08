class Person < ApplicationRecord
  belongs_to :species
  belongs_to :planet
  validates :name, uniqueness: true
  validates :name, presence: true
end
