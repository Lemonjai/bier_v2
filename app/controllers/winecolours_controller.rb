class WinecoloursController < ApplicationController
  before_action :set_winecolour, only: [:show, :edit, :update, :destroy]

  # GET /winecolours
  # GET /winecolours.json
  def index
    @winecolours = Winecolour.all
  end

  # GET /winecolours/1
  # GET /winecolours/1.json
  def show
  end

  # GET /winecolours/new
  def new
    @winecolour = Winecolour.new
  end

  # GET /winecolours/1/edit
  def edit
  end

  # POST /winecolours
  # POST /winecolours.json
  def create
    @winecolour = Winecolour.new(winecolour_params)

    respond_to do |format|
      if @winecolour.save
        format.html { redirect_to @winecolour, notice: 'Winecolour was successfully created.' }
        format.json { render :show, status: :created, location: @winecolour }
      else
        format.html { render :new }
        format.json { render json: @winecolour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /winecolours/1
  # PATCH/PUT /winecolours/1.json
  def update
    respond_to do |format|
      if @winecolour.update(winecolour_params)
        format.html { redirect_to @winecolour, notice: 'Winecolour was successfully updated.' }
        format.json { render :show, status: :ok, location: @winecolour }
      else
        format.html { render :edit }
        format.json { render json: @winecolour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winecolours/1
  # DELETE /winecolours/1.json
  def destroy
    @winecolour.destroy
    respond_to do |format|
      format.html { redirect_to winecolours_url, notice: 'Winecolour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winecolour
      @winecolour = Winecolour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def winecolour_params
      params.require(:winecolour).permit(:name, :hexcode)
    end
end
