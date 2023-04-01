# == Schema Information
#
# Table name: transpaleta_apilador_electricos
#
#  id          :bigint           not null, primary key
#  descripcion :string
#  disponible  :boolean
#  link        :string
#  marca       :string
#  modelo      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class TranspaletaApiladorElectrico < ApplicationRecord
  has_one_attached :photo

  validates :modelo, presence: true
  validates :marca, presence: true
  validates :link, presence: true
  validates :disponible, presence: true
end
