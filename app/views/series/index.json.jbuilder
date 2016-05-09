json.serie(@series) do |serie|
  json.extract! serie, :id, :nome, :duracao, :cliente_id
  json.url serie_url(serie, format: :json)
end
