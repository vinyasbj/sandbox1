class SharansController < ApplicationController
  before_action :set_sharan, only: [:show, :edit, :update, :destroy]

  # GET /sharans
  # GET /sharans.json
  def index
    @sharans = Sharan.all
  end

  # GET /sharans/1
  # GET /sharans/1.json
  def show
  end

  # GET /sharans/new
  def new
    @sharan = Sharan.new
  end

  # GET /sharans/1/edit
  def edit
  end

  # POST /sharans
  # POST /sharans.json
  def create
    @sharan = Sharan.new(sharan_params)

    respond_to do |format|
      if @sharan.save
        format.html { redirect_to @sharan, notice: 'Sharan was successfully created.' }
        format.json { render :show, status: :created, location: @sharan }
      else
        format.html { render :new }
        format.json { render json: @sharan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sharans/1
  # PATCH/PUT /sharans/1.json
  def update
    respond_to do |format|
      if @sharan.update(sharan_params)
        format.html { redirect_to @sharan, notice: 'Sharan was successfully updated.' }
        format.json { render :show, status: :ok, location: @sharan }
      else
        format.html { render :edit }
        format.json { render json: @sharan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sharans/1
  # DELETE /sharans/1.json
  def destroy
    @sharan.destroy
    respond_to do |format|
      format.html { redirect_to sharans_url, notice: 'Sharan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sharan
      @sharan = Sharan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sharan_params
      params.require(:sharan).permit(:first, :last)
    end
end
