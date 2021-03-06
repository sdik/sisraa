class RelatoriosController < ApplicationController
  before_action :set_relatorio, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /relatorios
  # GET /relatorios.json
  def index
    @relatorios = Relatorio.all
  end

  # GET /relatorios/1
  # GET /relatorios/1.json
  def show
  end

  # GET /relatorios/new
  def new
    @relatorio = Relatorio.new
  end

  # GET /relatorios/1/edit
  def edit
    @relatorio.fishbones.build
  end

  # POST /relatorios
  # POST /relatorios.json
  def create
    @relatorio = Relatorio.new(relatorio_params)

    respond_to do |format|
      if @relatorio.save
        format.html { redirect_to @relatorio, notice: 'Relatorio foi criado com Sucesso!' }
        format.json { render :show, status: :created, location: @relatorio }
      else
        format.html { render :new }
        format.json { render json: @relatorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorios/1
  # PATCH/PUT /relatorios/1.json
  def update
    respond_to do |format|
      if @relatorio.update(relatorio_params)
        format.html { redirect_to @relatorio, notice: 'Relatorio foi atualizado com Sucesso!' }
        format.json { render :show, status: :ok, location: @relatorio }
      else
        format.html { render :edit }
        format.json { render json: @relatorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorios/1
  # DELETE /relatorios/1.json
  def destroy
    @relatorio.destroy
    respond_to do |format|
      format.html { redirect_to relatorios_url, notice: 'Relatoriofoi Deletado com Sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio
      @relatorio = Relatorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relatorio_params
      params.require(:relatorio).permit(:data, :departamento_id, :setor_id, :anomalia, :descricao, :acao, :grupodeanalise, fishbones_attributes: [ :id, :grupo, :data, :causa, :relevancia, :acao, :reponsavel] )
    end
end
