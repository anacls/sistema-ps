json.extract! paciente, :id, :nome, :endereco, :data_nasc, :rg, :cpf, :email, :senha, :telefone, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
