class CreateMaquinariapesadas < ActiveRecord::Migration[7.0]
  def change
    create_table :maquinariapesadas do |t|
      t.string :modelo
      t.string :marca
      t.string :disponible
      t.string :link

      t.string :descripcion

      t.timestamps
    end
  end
end
