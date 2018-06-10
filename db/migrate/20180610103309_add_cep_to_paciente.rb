class AddCepToPaciente < ActiveRecord::Migration[5.1]
  def change
    add_column :pacientes, :cep, :string
  end
end
