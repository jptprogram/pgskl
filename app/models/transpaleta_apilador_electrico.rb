# == Schema Information
#
# Table name: transpaleta_apilador_electricos
#
#  id          :bigint           not null, primary key
#  descripcion :string
#  disponible  :boolean          default(TRUE)
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
  validates :descripcion, presence: true
  validates :disponible, inclusion: { in: [true, false] }
  validates :photo, presence: true
end
