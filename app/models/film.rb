class Film < ApplicationRecord
  validates :title, uniqueness: true
  validates :title, presence: true
end
