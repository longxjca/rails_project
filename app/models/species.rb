class Species < ApplicationRecord
  has_many :people
  has_many :planets, through: :people
  validates :name, uniqueness: true
  validates :name, presence: true
end
