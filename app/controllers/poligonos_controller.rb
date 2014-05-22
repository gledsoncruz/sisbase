class PoligonosController < ApplicationController
  before_action :set_poligono, only: [:show, :edit, :update, :destroy]

  # GET /poligonos
  # GET /poligonos.json
  def index
    @poligonos = Poligono.all
  end

  # GET /poligonos/1
  # GET /poligonos/1.json
  def show
  end

  # GET /poligonos/new
  def new
    @poligono = Poligono.new
  end

  # GET /poligonos/1/edit
  def edit
  end

  # POST /poligonos
  # POST /poligonos.json
  def create
    @poligono = Poligono.new(poligono_params)

    respond_to do |format|
      if @poligono.save
        format.html { redirect_to @poligono, notice: 'Poligono was successfully created.' }
        format.json { render action: 'show', status: :created, location: @poligono }
      else
        format.html { render action: 'new' }
        format.json { render json: @poligono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poligonos/1
  # PATCH/PUT /poligonos/1.json
  def update
    respond_to do |format|
      if @poligono.update(poligono_params)
        format.html { redirect_to @poligono, notice: 'Poligono was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @poligono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poligonos/1
  # DELETE /poligonos/1.json
  def destroy
    @poligono.destroy
    respond_to do |format|
      format.html { redirect_to poligonos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poligono
      @poligono = Poligono.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poligono_params
      params.require(:poligono).permit(:descricao, :obs, :the_geom)
    end
end
