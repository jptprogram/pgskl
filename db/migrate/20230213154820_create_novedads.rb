class CreateNovedads < ActiveRecord::Migration[7.0]
  def change
    create_table :novedads do |t|
      t.string :descripcion
      t.string :titulo

      t.timestamps
    end
  end
end
