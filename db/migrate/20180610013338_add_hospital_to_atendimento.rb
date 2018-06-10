class AddHospitalToAtendimento < ActiveRecord::Migration[5.1]
  def change
    add_column :atendimentos, :hospital, :string
  end
end
