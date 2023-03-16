class Grua < ApplicationRecord
  has_one_attached :photo

  CATEGORIES = ["Electrica", "Combustion", "Apiladores", "Transpaleta"].freeze
end
