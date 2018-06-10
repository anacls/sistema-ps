class Hospital < ApplicationRecord
  has_many :atendimentos, dependent: :destroy
end
