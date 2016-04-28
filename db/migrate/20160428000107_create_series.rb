class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :nome
      t.string :duracao
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
