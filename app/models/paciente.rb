class Paciente < ApplicationRecord
  has_many :atendimentos, dependent: :destroy
  validates :nome,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: {message:"não pode estar vazio."}, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX},
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }, allow_nil: true
  validates :cep,  presence: true, length: { is: 8}
  
  def feed
    Atendimento.where("paciente_id = ?", id)
  end
end
