class Hospital < ApplicationRecord
  has_many :atendimentos, dependent: :destroy
  validates_presence_of :nome, :numero, :cep, :cnpj, :telefone
  validates :nome, length: { maximum: 50}
  validates :endereco, length: { maximum: 50}
  validates :numero, length: { maximum: 10}
  validates :cep, length: { is: 8 }
  validates :cidade, length: { maximum: 50}
  validates :estado, length: { maximum: 50}
  validates :bairro, length: { maximum: 50}
  validates :cnpj, length: { maximum: 50}
  validates :telefone, length: { maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { maximum: 255},
                    format: { with: VALID_EMAIL_REGEX},
                    uniqueness: { case_sensitive: false }
  validates :senha, length: { minimum: 6,maximum: 20, message:"tem que ter entre 6 e 20 caracteres" }, allow_nil: true
end
