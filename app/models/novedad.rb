# == Schema Information
#
# Table name: novedads
#
#  id          :bigint           not null, primary key
#  descripcion :string
#  titulo      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Novedad < ApplicationRecord
  has_one_attached :photo

  validates :titulo, presence: true
  validates :descripcion, presence: true
end
