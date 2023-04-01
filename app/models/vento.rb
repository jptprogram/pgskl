# == Schema Information
#
# Table name: ventos
#
#  id          :bigint           not null, primary key
#  category    :string
#  descripcion :string
#  disponible  :boolean
#  link        :string
#  marca       :string
#  modelo      :string
#  precio      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Vento < ApplicationRecord
  CATEGORIES = ["Nuevos", "Reutilizados"].freeze

  has_one_attached :photo

  validates :modelo, presence: true
  validates :marca, presence: true
  validates :link, presence: true
  validates :disponible, presence: true
  validates :precio, presence: true
end
