class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :empresa
      t.string :email
      t.string :phone
      t.string :message

      t.timestamps
    end
  end
end
