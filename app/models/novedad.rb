class Novedad < ApplicationRecord
  has_one_attached :photo

  validates :titulo, presence: true
  validates :descripcion, presence: true
end
