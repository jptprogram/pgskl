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
require "test_helper"

class GruaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
