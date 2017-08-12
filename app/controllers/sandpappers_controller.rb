class SandpappersController < ApplicationController
  before_action :set_sandpapper, only: [:show, :edit, :update, :destroy]

  # GET /sandpappers
  # GET /sandpappers.json
  def index
    @sandpappers = Sandpapper.all
  end

  # GET /sandpappers/1
  # GET /sandpappers/1.json
  def show
  end

  # GET /sandpappers/new
  def new
    @sandpapper = Sandpapper.new
  end

  # GET /sandpappers/1/edit
  def edit
  end

  # POST /sandpappers
  # POST /sandpappers.json
  def create
    @sandpapper = Sandpapper.new(sandpapper_params)

    respond_to do |format|
      if @sandpapper.save
        format.html { redirect_to @sandpapper, notice: 'Sandpapper was successfully created.' }
        format.json { render :show, status: :created, location: @sandpapper }
      else
        format.html { render :new }
        format.json { render json: @sandpapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sandpappers/1
  # PATCH/PUT /sandpappers/1.json
  def update
    respond_to do |format|
      if @sandpapper.update(sandpapper_params)
        format.html { redirect_to @sandpapper, notice: 'Sandpapper was successfully updated.' }
        format.json { render :show, status: :ok, location: @sandpapper }
      else
        format.html { render :edit }
        format.json { render json: @sandpapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sandpappers/1
  # DELETE /sandpappers/1.json
  def destroy
    @sandpapper.destroy
    respond_to do |format|
      format.html { redirect_to sandpappers_url, notice: 'Sandpapper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sandpapper
      @sandpapper = Sandpapper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sandpapper_params
      params.require(:sandpapper).permit(:name)
    end
end
