class Species < ApplicationRecord
  has_many :people
  validates :name, uniqueness: true
  validates :name, presence: true
end
