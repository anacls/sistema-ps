class CreateAtendimentos < ActiveRecord::Migration[5.1]
  def change
    create_table :atendimentos do |t|
      t.string :situacao
      t.string :sintomas
      t.time :tempoChegada
      t.string :tipoAtendimento

      t.timestamps
    end
  end
end
