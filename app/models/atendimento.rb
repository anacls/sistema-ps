class Atendimento < ApplicationRecord
  belongs_to :paciente
  has_many :hospital
  validates :paciente_id, :situacao, :sintomas, :tempoCheg, :tipoAtendimento, presence: true
  validates :sintomas, length: {maximum: 40}
end
