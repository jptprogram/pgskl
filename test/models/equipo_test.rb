# == Schema Information
#
# Table name: equipos
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
require "test_helper"

class EquipoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
