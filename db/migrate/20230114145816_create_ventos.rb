class CreateVentos < ActiveRecord::Migration[7.0]
  def change
    create_table :ventos do |t|
      t.string :marca
      t.string :modelo
      t.string :link

      t.string :precio
      t.string :descripcion
      t.string :category

      t.timestamps
    end
  end
end
