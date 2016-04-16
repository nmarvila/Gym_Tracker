json.array!(@avaliacoes) do |avaliacao|
  json.extract! avaliacao, :id, :peso, :altura, :percentualGordura, :imc, :cliente_id
  json.url avaliacao_url(avaliacao, format: :json)
end
