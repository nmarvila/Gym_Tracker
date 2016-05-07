# coding: utf-8

feature 'gerenciar Cliente' do

    scenario 'incluir Cliente' do

        visit new_cliente_path
        preencher_e_verificar_cliente
    end

    scenario 'alterar Cliente' do

        cliente = FactoryGirl.create(:cliente)
        visit edit_cliente_path(cliente)
        preencher_e_verificar_cliente

    end

    scenario 'excluir Cliente' do

        cliente = FactoryGirl.create(:cliente)
        visit clientes_path
        click_link 'Excluir'

    end

    def preencher_e_verificar_cliente

        fill_in 'Nome', :with => "Nichollas"
        select '2014', :from => "cliente_dataNascimento_1i"
        select 'June', :from => "cliente_dataNascimento_2i"
        select '29', :from => "cliente_dataNascimento_3i"
        fill_in 'Rg', :with => "23456789-9"
        fill_in 'Cpf', :with => "123456789-00"
        fill_in 'Telefone', :with => "22999999999"
        fill_in 'Login', :with => "nichollas"
        fill_in 'Senha', :with => "123456"

        click_button 'Salvar'

        expect(page).to have_content 'Nome: Nichollas'
        expect(page).to have_content 'Data de Nascimento: 2014-06-29'
        expect(page).to have_content 'Rg: 23456789-9'
        expect(page).to have_content 'Cpf: 123456789-00'
        expect(page).to have_content 'Telefone: 22999999999'

    end
end
