class Film < ApplicationRecord
  has_many :personfilms
  has_many :people, through: :personfilms

  validates :title, uniqueness: true
  validates :title, presence: true
end
