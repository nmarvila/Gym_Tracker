class AddLoginAndSenhaToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :login, :string
    add_column :clientes, :senha, :string
  end
end
