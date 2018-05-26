json.extract! atendimento, :id, :situacao, :sintomas, :tempoChegada, :tipoAtendimento, :created_at, :updated_at
json.url atendimento_url(atendimento, format: :json)
