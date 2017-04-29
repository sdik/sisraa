class FishbonesController < ApplicationController
  before_action :set_fishbone, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /fishbones
  # GET /fishbones.json
  def index
    @fishbones = Fishbone.all
  end

  # GET /fishbones/1
  # GET /fishbones/1.json
  def show
  end

  # GET /fishbones/new
  def new
    @fishbone = Fishbone.new
  end

  # GET /fishbones/1/edit
  def edit
  end

  # POST /fishbones
  # POST /fishbones.json
  def create
    @fishbone = Fishbone.new(fishbone_params)
   
    respond_to do |format|
      if @fishbone.save
        format.html { redirect_to @fishbone, notice: 'Fishbone foi criado com Sucesso!' }
        format.json { render :show, status: :created, location: @fishbone }
      else
        format.html { render :new }
        format.json { render json: @fishbone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fishbones/1
  # PATCH/PUT /fishbones/1.json
  def update
    respond_to do |format|
      if @fishbone.update(fishbone_params)
        format.html { redirect_to @fishbone, notice: 'Fishbone foi atualizado com Sucesso!' }
        format.json { render :show, status: :ok, location: @fishbone }
      else
        format.html { render :edit }
        format.json { render json: @fishbone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fishbones/1
  # DELETE /fishbones/1.json
  def destroy
    @relatorio = @fishbone.relatorio_id
    @fishbone.destroy
    respond_to do |format|
      format.html { redirect_to relatorio_path(@relatorio), notice: 'Causa Deletado com Sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fishbone
      @fishbone = Fishbone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fishbone_params
      params.require(:fishbone).permit(:grupo, :relatorio_id, :causa, :relevancia, :acao, :responsavel_id, :prazo)
    end
end
