class Grua < ApplicationRecord
  has_one_attached :photo

  CATEGORIES = ["Electrica", "Combustion", "Diesel"].freeze

  validates :modelo, presence: true
  validates :marca, presence: true
  validates :link, presence: true
  validates :disponible, presence: true
  validates :photo, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
