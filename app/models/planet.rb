class Planet < ApplicationRecord
  has_many :planets
  validates :name, uniqueness: true
  validates :name, presence: true
end
