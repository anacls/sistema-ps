class CreatePacientes < ActiveRecord::Migration[5.1]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :endereco
      t.date :data_nasc
      t.string :rg
      t.string :cpf
      t.string :email
      t.string :senha
      t.string :telefone

      t.timestamps
    end
  end
end
