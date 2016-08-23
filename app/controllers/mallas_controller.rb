class MallasController < ApplicationController
  before_action :set_malla, only: [:show, :edit, :update, :destroy]

  # GET /mallas
  # GET /mallas.json
  def index
    @mallas = Malla.all
  end

  # GET /mallas/1
  # GET /mallas/1.json
  def show
  end

  # GET /mallas/new
  def new
    @malla = Malla.new
    @carreras = Carrera.all
  end

  # GET /mallas/1/edit
  def edit
  
  end

  # POST /mallas
  # POST /mallas.json
  def create
    @malla = Malla.new(malla_params)
    @carreras = Carrera.all
    respond_to do |format|
      if @malla.save
        format.html { redirect_to @malla, notice: 'Malla creada exitosamente.' }
        format.json { render :show, status: :created, location: @malla }
      else
        format.html { render :new }
        format.json { render json: @malla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mallas/1
  # PATCH/PUT /mallas/1.json
  def update
    respond_to do |format|
      if @malla.update(malla_params)
        format.html { redirect_to @malla, notice: 'Malla actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @malla }
      else
        format.html { render :edit }
        format.json { render json: @malla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mallas/1
  # DELETE /mallas/1.json
  def destroy
    @malla.carrera_id = nil
    @malla.save
    @malla.destroy
    respond_to do |format|
      format.html { redirect_to mallas_url, notice: 'Malla eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_malla
      @malla = Malla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def malla_params
      params.require(:malla).permit(:plan, :carrera_id)
    end
end
