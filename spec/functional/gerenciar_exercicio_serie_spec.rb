feature 'gerenciar Exercicio_Serie' do

  before(:each) do
    @serie = create(:serie, nome: "Membros Superiores")
    @exercicio = create(:exercicio, nome: "Supino")
  end


  let(:dados) do {

    serie: "Membros Superiores",
    exercicio: "Supino"
   }
  end

  scenario 'incluir Exercicio_Serie' do #, :js => true  do
    visit new_exercicio_serie_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar Exercicio_Serie' do #, :js => true  do

    exercicio_serie = FactoryGirl.create(:exercicio_serie, serie: @serie, exercicio: @exercicio)

    visit edit_exercicio_serie_path(exercicio_serie)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir Exercicio_Serie' do #, :js => true  do

    exercicio_serie = FactoryGirl.create(:exercicio_serie, serie: @serie, exercicio: @exercicio)
    visit exercicio_series_path

    click_link 'Excluir'

  end

  def preencher(dados)

    select dados[:serie], from: "Série"
    select dados[:exercicio], from: "Exercício"

  end

  def verificar(dados)

    page.should have_content "Série: #{dados[:serie]}"
    page.should have_content "Exercício: #{dados[:exercicio]}"

  end

end
