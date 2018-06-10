class CreateHospitals < ActiveRecord::Migration[5.1]
  def change
    create_table :hospitals do |t|
      t.string :nome
      t.string :endereco
      t.string :cnpj
      t.string :telefone
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
