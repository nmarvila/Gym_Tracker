class ExercicioSerie < ActiveRecord::Base
  belongs_to :serie
  belongs_to :exercicio
end
