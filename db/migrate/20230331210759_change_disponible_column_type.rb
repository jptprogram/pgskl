class ChangeDisponibleColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :equipos, :disponible, 'boolean USING CAST(disponible AS boolean)'
    change_column :gruas, :disponible, 'boolean USING CAST(disponible AS boolean)'
    change_column :maquinariapesadas, :disponible, 'boolean USING CAST(disponible AS boolean)'
    change_column :repuestos, :disponible, 'boolean USING CAST(disponible AS boolean)'
    change_column :tractors, :disponible, 'boolean USING CAST(disponible AS boolean)'
    change_column :transpaleta_apilador_electricos, :disponible, 'boolean USING CAST(disponible AS boolean)'
    change_column :ventos, :disponible, 'boolean USING CAST(disponible AS boolean)'
  end
end
