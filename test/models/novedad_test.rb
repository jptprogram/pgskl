# == Schema Information
#
# Table name: novedades
#
#  id          :bigint           not null, primary key
#  descripcion :string
#  titulo      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class NovedadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
