class CreateRepuestos < ActiveRecord::Migration[7.0]
  def change
    create_table :repuestos do |t|
      t.string :modelo
      t.string :marca
      t.string :link
      t.string :photo
      t.string :disponible
      t.string :precio

      t.timestamps
    end
  end
end
