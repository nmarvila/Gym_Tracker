class ExercicioSeriesController < ApplicationController
  before_action :set_exercicio_serie, only: [:show, :edit, :update, :destroy]

  # GET /exercicio_series
  # GET /exercicio_series.json
  def index
    @exercicio_series = ExercicioSerie.all
  end

  # GET /exercicio_series/1
  # GET /exercicio_series/1.json
  def show
  end

  # GET /exercicio_series/new
  def new
    @exercicio_serie = ExercicioSerie.new
  end

  # GET /exercicio_series/1/edit
  def edit
  end

  # POST /exercicio_series
  # POST /exercicio_series.json
  def create
    @exercicio_serie = ExercicioSerie.new(exercicio_serie_params)

    respond_to do |format|
      if @exercicio_serie.save
        format.html { redirect_to @exercicio_serie, notice: 'O Exercício da Série foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @exercicio_serie }
      else
        format.html { render :new }
        format.json { render json: @exercicio_serie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercicio_series/1
  # PATCH/PUT /exercicio_series/1.json
  def update
    respond_to do |format|
      if @exercicio_serie.update(exercicio_serie_params)
        format.html { redirect_to @exercicio_serie, notice: 'O Exercício da Série foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @exercicio_serie }
      else
        format.html { render :edit }
        format.json { render json: @exercicio_serie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercicio_series/1
  # DELETE /exercicio_series/1.json
  def destroy
    @exercicio_serie.destroy
    respond_to do |format|
      format.html { redirect_to exercicio_series_url, notice: 'O Exercício da Série foi destruído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercicio_serie
      @exercicio_serie = ExercicioSerie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercicio_serie_params
      params.require(:exercicio_serie).permit(:serie_id, :exercicio_id)
    end
end
