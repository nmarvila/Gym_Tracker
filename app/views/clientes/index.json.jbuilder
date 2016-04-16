json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :dataNascimento, :rg, :cpf, :telefone
  json.url cliente_url(cliente, format: :json)
end
