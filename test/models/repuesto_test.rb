# == Schema Information
#
# Table name: repuestos
#
#  id          :bigint           not null, primary key
#  descripcion :string
#  disponible  :boolean          default(TRUE)
#  link        :string
#  marca       :string
#  modelo      :string
#  precio      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class RepuestoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
