class AddDisponibleToVentos < ActiveRecord::Migration[7.0]
  def change
    add_column :ventos, :disponible, :string
  end
end
