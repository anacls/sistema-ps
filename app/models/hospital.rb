class Hospital < ApplicationRecord
  has_many :atendimentos, dependent: :destroy
  validates :nome, presence: true, length: { maximum: 50 }
  validates :endereco,  presence: true, length: { maximum: 50 }
  validates :numero,  presence: true, length: { maximum: 50 }
  validates :cep,  presence: true, length: { is: 8 }
  validates :cidade,  presence: true, length: { maximum: 50 }
  validates :estado,  presence: true, length: { maximum: 50 }
  validates :bairro,  presence: true, length: { maximum: 50 }
  validates :cnpj,  presence: true, length: { maximum: 50 }
  validates :telefone,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :senha, length: { minimum: 6,maximum: 20 }, allow_nil: true
end
