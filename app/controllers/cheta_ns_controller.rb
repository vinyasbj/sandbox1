class ChetaNsController < ApplicationController
  before_action :set_chetan, only: [:show, :edit, :update, :destroy]

  # GET /chetans
  # GET /chetans.json
  def index
    @chetans = Chetan.all
  end

  # GET /chetans/1
  # GET /chetans/1.json
  def show
  end

  # GET /chetans/new
  def new
    @chetan = Chetan.new
  end

  # GET /chetans/1/edit
  def edit
  end

  # POST /chetans
  # POST /chetans.json
  def create
    @chetan = Chetan.new(chetan_params)

    respond_to do |format|
      if @chetan.save
        format.html { redirect_to @chetan, notice: 'Chetan was successfully created.' }
        format.json { render :show, status: :created, location: @chetan }
      else
        format.html { render :new }
        format.json { render json: @chetan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chetans/1
  # PATCH/PUT /chetans/1.json
  def update
    respond_to do |format|
      if @chetan.update(chetan_params)
        format.html { redirect_to @chetan, notice: 'Chetan was successfully updated.' }
        format.json { render :show, status: :ok, location: @chetan }
      else
        format.html { render :edit }
        format.json { render json: @chetan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chetans/1
  # DELETE /chetans/1.json
  def destroy
    @chetan.destroy
    respond_to do |format|
      format.html { redirect_to chetans_url, notice: 'Chetan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chetan
      @chetan = Chetan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chetan_params
      params.require(:chetan).permit(:name, :commit_id)
    end
end
