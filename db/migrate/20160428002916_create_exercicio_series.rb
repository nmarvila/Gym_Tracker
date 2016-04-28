class CreateExercicioSeries < ActiveRecord::Migration
  def change
    create_table :exercicio_series do |t|
      t.references :serie, index: true, foreign_key: true
      t.references :exercicio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
