json.cliente(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :dataNascimento, :rg, :cpf, :telefone, :login, :senha
  json.url cliente_url(cliente, format: :json)
end
