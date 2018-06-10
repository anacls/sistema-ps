class Atendimento < ApplicationRecord
  belongs_to :paciente
  has_many :hospital
  validates :paciente_id, presence: true
end
