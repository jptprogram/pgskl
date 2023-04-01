# == Schema Information
#
# Table name: repuestos
#
#  id          :bigint           not null, primary key
#  descripcion :string
#  disponible  :boolean
#  link        :string
#  marca       :string
#  modelo      :string
#  precio      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Repuesto < ApplicationRecord
  has_one_attached :photo

  validates :modelo, presence: true
  validates :marca, presence: true
  validates :link, presence: true
  validates :disponible, presence: true
  validates :precio, presence: true
end
