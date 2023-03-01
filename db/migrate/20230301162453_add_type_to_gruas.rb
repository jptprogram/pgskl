class AddTypeToGruas < ActiveRecord::Migration[7.0]
  def change
    add_column :gruas, :type, :string
  end
end
