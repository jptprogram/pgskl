class AddElectricaCombustionTranspaletaApiladorToGruas < ActiveRecord::Migration[7.0]
  def change
    add_column :gruas, :electrica, :boolean
    add_column :gruas, :combustion, :boolean
    add_column :gruas, :transpaleta, :boolean
    add_column :gruas, :apilador, :boolean
  end
end
