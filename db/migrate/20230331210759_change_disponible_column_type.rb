
class ChangeDisponibleColumnType < ActiveRecord::Migration[7.0]
  def up
    execute "UPDATE equipos SET disponible = 't' WHERE disponible = 'INMEDIATA '"
    execute "UPDATE gruas SET disponible = 't' WHERE disponible = 'INMEDIATA '"
    execute "UPDATE maquinariapesadas SET disponible = 't' WHERE disponible = 'INMEDIATA '"
    execute "UPDATE repuestos SET disponible = 't' WHERE disponible = 'INMEDIATA '"
    execute "UPDATE tractors SET disponible = 't' WHERE disponible = 'INMEDIATA '"
    execute "UPDATE transpaleta_apilador_electricos SET disponible = 't' WHERE disponible = 'INMEDIATA '"

    change_column :equipos, :disponible, :boolean, using: 'disponible::boolean', default: true
    change_column :gruas, :disponible, :boolean, using: 'disponible::boolean', default: true
    change_column :maquinariapesadas, :disponible, :boolean, using: 'disponible::boolean', default: true
    change_column :repuestos, :disponible, :boolean, using: 'disponible::boolean', default: true
    change_column :tractors, :disponible, :boolean, using: 'disponible::boolean', default: true
    change_column :transpaleta_apilador_electricos, :disponible, :boolean, using: 'disponible::boolean', default: true
  end
end

