feature 'gerenciar Avaliacao' do

  before(:each) do
    @cliente = create(:cliente, nome: "Nichollas")
  end


  let(:dados) do {

    peso: 60.8,
    altura: 1.73,
    percentualGordura: 11.2,
    imc: 22.1,
    cliente: "Nichollas"
   }
  end

  scenario 'incluir Avaliacao' do #, :js => true  do
    visit new_avaliacao_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar Avaliacao' do #, :js => true  do

    avaliacao = FactoryGirl.create(:avaliacao, cliente: @cliente )

    visit edit_avaliacao_path(avaliacao)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir Avaliacao' do #, :js => true  do

    avaliacao = FactoryGirl.create(:avaliacao, cliente: @cliente)
    visit avaliacoes_path

    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Peso', with: dados[:peso]
    fill_in 'Altura', with: dados[:altura]
    fill_in 'Percentual de Gordura', with: dados[:percentualGordura]
    fill_in 'Imc', with: dados[:imc]
    select dados[:cliente], from: "Cliente"

  end

  def verificar(dados)

    page.should have_content "Peso: #{dados[:peso]}"
    page.should have_content "Altura: #{dados[:altura]}"
    page.should have_content "Percentual de Gordura: #{dados[:percentualGordura]}"
    page.should have_content "Imc: #{dados[:imc]}"
    page.should have_content "Cliente: #{dados[:cliente]}"

  end

end
