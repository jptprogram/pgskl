class Vento < ApplicationRecord
  CATEGORY = ["Equipos Nuevos", "Equipos Reutilizados"].freeze

  has_one_attached :photo

  validates :modelo, presence: true
  validates :marca, presence: true
  validates :link, presence: true
  validates :disponible, presence: true
  validates :photo, presence: true
  validates :precio, presence: true
end
