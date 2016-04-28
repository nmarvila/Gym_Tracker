feature 'gerenciar Serie' do

  before(:each) do
    @cliente = create(:cliente, nome: "Nichollas")
  end


  let(:dados) do {

    nome: "Membros Superiores",
    duracao: "1.5",
    cliente: "Nichollas"
   }
  end

  scenario 'incluir Serie' do #, :js => true  do
    visit new_serie_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar Serie' do #, :js => true  do

    serie = FactoryGirl.create(:serie, cliente: @cliente )

    visit edit_serie_path(serie)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir Serie' do #, :js => true  do

    serie = FactoryGirl.create(:serie, cliente: @cliente)
    visit series_path

    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Nome', with: dados[:nome]
    fill_in 'Duração', with: dados[:duracao]
    select dados[:cliente], from: "Cliente"

  end

  def verificar(dados)

    page.should have_content "Nome: #{dados[:nome]}"
    page.should have_content "Duração: #{dados[:duracao]}"
    page.should have_content "Cliente: #{dados[:cliente]}"

  end

end
