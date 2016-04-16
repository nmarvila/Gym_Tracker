class CreateAvaliacoes < ActiveRecord::Migration
  def change
    create_table :avaliacoes do |t|
      t.float :peso
      t.float :altura
      t.float :percentualGordura
      t.float :imc
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
