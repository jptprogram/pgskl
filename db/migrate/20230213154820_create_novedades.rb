class CreateNovedades < ActiveRecord::Migration[7.0]
  def change
    create_table :novedades do |t|
      t.string :descripcion
      t.string :titulo

      t.timestamps
    end
  end
end
