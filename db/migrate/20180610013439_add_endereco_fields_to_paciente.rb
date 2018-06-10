class AddEnderecoFieldsToPaciente < ActiveRecord::Migration[5.1]
  def change
    add_column :pacientes, :numero, :int
    add_column :pacientes, :bairro, :string
    add_column :pacientes, :cidade, :string
    add_column :pacientes, :estado, :string
  end
end
