class AddSomeFieldsToHospital < ActiveRecord::Migration[5.1]
  def change
    add_column :hospitals, :numero, :int
    add_column :hospitals, :bairro, :string
    add_column :hospitals, :cidade, :string
    add_column :hospitals, :estado, :string
    add_column :hospitals, :cep, :string
  end
end
