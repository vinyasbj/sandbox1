class NisargasController < ApplicationController
  before_action :set_nisarga, only: [:show, :edit, :update, :destroy]

  # GET /nisargas
  # GET /nisargas.json
  def index
    @nisargas = Nisarga.all
  end

  # GET /nisargas/1
  # GET /nisargas/1.json
  def show
  end

  # GET /nisargas/new
  def new
    @nisarga = Nisarga.new
  end

  # GET /nisargas/1/edit
  def edit
  end

  # POST /nisargas
  # POST /nisargas.json
  def create
    @nisarga = Nisarga.new(nisarga_params)

    respond_to do |format|
      if @nisarga.save
        format.html { redirect_to @nisarga, notice: 'Nisarga was successfully created.' }
        format.json { render :show, status: :created, location: @nisarga }
      else
        format.html { render :new }
        format.json { render json: @nisarga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nisargas/1
  # PATCH/PUT /nisargas/1.json
  def update
    respond_to do |format|
      if @nisarga.update(nisarga_params)
        format.html { redirect_to @nisarga, notice: 'Nisarga was successfully updated.' }
        format.json { render :show, status: :ok, location: @nisarga }
      else
        format.html { render :edit }
        format.json { render json: @nisarga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nisargas/1
  # DELETE /nisargas/1.json
  def destroy
    @nisarga.destroy
    respond_to do |format|
      format.html { redirect_to nisargas_url, notice: 'Nisarga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nisarga
      @nisarga = Nisarga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nisarga_params
      params.require(:nisarga).permit(:name)
    end
end
