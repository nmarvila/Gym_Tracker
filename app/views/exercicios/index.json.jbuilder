json.exercicio(@exercicios) do |exercicio|
  json.extract! exercicio, :id, :nome
  json.url exercicio_url(exercicio, format: :json)
end
