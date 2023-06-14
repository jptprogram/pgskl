class AddDisponibilidadToVentos < ActiveRecord::Migration[7.0]
  def change
    add_column :ventos, :disponible, :boolean, default: true
  end
end
