class Grua < ApplicationRecord
  has_one_attached :photo

  TYPES = ["Electrica", "Combustion", "Apiladores", "Transpaleta"].freeze
end
