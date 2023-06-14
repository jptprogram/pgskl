# == Schema Information
#
# Table name: gruas
#
#  id          :bigint           not null, primary key
#  category    :string
#  descripcion :string
#  disponible  :boolean          default(TRUE)
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
  validates :category, inclusion: { in: CATEGORIES }
  validates :descripcion, presence: true
  validates :disponible, inclusion: { in: [true, false] }
  validates :photo, presence: true
end
