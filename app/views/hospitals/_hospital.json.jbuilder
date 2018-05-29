json.extract! hospital, :id, :nome, :endereco, :cnpj, :telefone, :email, :senha, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
