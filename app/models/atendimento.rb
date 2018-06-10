class Atendimento < ApplicationRecord
  belongs_to :paciente
  belongs_to :hospital
  validates :paciente_id, presence: true
end
