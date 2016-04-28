# coding: utf-8

feature 'gerenciar Exercicio' do

    scenario 'incluir Exercicio' do

        visit new_exercicio_path
        preencher_e_verificar_exercicio
    end

    scenario 'alterar Exercicio' do

        exercicio = FactoryGirl.create(:exercicio)
        visit edit_exercicio_path(exercicio)
        preencher_e_verificar_exercicio

    end

    scenario 'excluir Exercicio' do

        exercicio = FactoryGirl.create(:exercicio)
        visit exercicios_path
        click_link 'Excluir'

    end

    def preencher_e_verificar_exercicio

        fill_in 'Nome', :with => "Supino"

        click_button 'Salvar'

        expect(page).to have_content 'Nome: Supino'

    end
end
