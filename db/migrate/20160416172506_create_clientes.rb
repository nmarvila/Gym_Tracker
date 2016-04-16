class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.date :dataNascimento
      t.string :rg
      t.string :cpf
      t.string :telefone

      t.timestamps null: false
    end
  end
end
