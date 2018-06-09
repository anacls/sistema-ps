class Atendimento < ApplicationRecord
  belongs_to :paciente
  validates :paciente_id, presence: true
end
