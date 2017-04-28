class ResponsaveisController < ApplicationController
  before_action :set_responsavel, only: [:show, :edit, :update, :destroy]

  # GET /responsaveis
  # GET /responsaveis.json
  def index
    @responsaveis = Responsavel.all
  end

  # GET /responsaveis/1
  # GET /responsaveis/1.json
  def show
  end

  # GET /responsaveis/new
  def new
    @responsavel = Responsavel.new
  end

  # GET /responsaveis/1/edit
  def edit
  end

  # POST /responsaveis
  # POST /responsaveis.json
  def create
    @responsavel = Responsavel.new(responsavel_params)

    respond_to do |format|
      if @responsavel.save
        format.html { redirect_to @responsavel, notice: 'Responsavel foi criado com Sucesso!' }
        format.json { render :show, status: :created, location: @responsavel }
      else
        format.html { render :new }
        format.json { render json: @responsavel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responsaveis/1
  # PATCH/PUT /responsaveis/1.json
  def update
    respond_to do |format|
      if @responsavel.update(responsavel_params)
        format.html { redirect_to @responsavel, notice: 'Responsavel foi atualizado com Sucesso!' }
        format.json { render :show, status: :ok, location: @responsavel }
      else
        format.html { render :edit }
        format.json { render json: @responsavel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responsaveis/1
  # DELETE /responsaveis/1.json
  def destroy
    @responsavel.destroy
    respond_to do |format|
      format.html { redirect_to responsaveis_url, notice: 'Responsavelfoi Deletado com Sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsavel
      @responsavel = Responsavel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def responsavel_params
      params.require(:responsavel).permit(:nome)
    end
end
