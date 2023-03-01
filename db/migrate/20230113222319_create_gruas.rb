class CreateGruas < ActiveRecord::Migration[7.0]
  def change
    create_table :gruas do |t|
      t.string :modelo
      t.string :marca
      t.string :disponible
      t.string :link
      t.string :photo
      t.boolean :electrica
      t.boolean :combustion
      t.boolean :apiladores
      t.boolean :transpaleta

      t.timestamps
    end
  end
end
