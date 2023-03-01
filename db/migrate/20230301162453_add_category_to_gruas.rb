class AddCategoryToGruas < ActiveRecord::Migration[7.0]
  def change
    add_column :gruas, :category, :string
  end
end
