json.exercicio_serie(@exercicio_series) do |exercicio_serie|
  json.extract! exercicio_serie, :id, :serie_id, :exercicio_id
  json.url exercicio_serie_url(exercicio_serie, format: :json)
end
