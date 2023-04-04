# == Schema Information
#
# Table name: gruas
#
#  id          :bigint           not null, primary key
#  category    :string
#  descripcion :string
#  disponible  :boolean
#  link        :string
#  marca       :string
#  modelo      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Grua < ApplicationRecord
  has_one_attached :photo

  CATEGORIES = ["Electrica", "Combustion", "Diesel"].freeze

  validates :modelo, presence: true
  validates :marca, presence: true
  validates :link, presence: true
  validates :disponible, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
