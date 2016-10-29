class WinepostsController < ApplicationController
  before_action :set_winepost, only: [:show, :edit, :update, :destroy]

  # GET /wineposts
  # GET /wineposts.json
  def index
    @wineposts = Winepost.all
  end

  # GET /wineposts/1
  # GET /wineposts/1.json
  def show
  end

  # GET /wineposts/new
  def new
    @winepost = Winepost.new
  end

  # GET /wineposts/1/edit
  def edit
  end

  # POST /wineposts
  # POST /wineposts.json
  def create
    @winepost = Winepost.new(winepost_params)

    respond_to do |format|
      if @winepost.save
        format.html { redirect_to @winepost, notice: 'Winepost was successfully created.' }
        format.json { render :show, status: :created, location: @winepost }
      else
        format.html { render :new }
        format.json { render json: @winepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wineposts/1
  # PATCH/PUT /wineposts/1.json
  def update
    respond_to do |format|
      if @winepost.update(winepost_params)
        format.html { redirect_to @winepost, notice: 'Winepost was successfully updated.' }
        format.json { render :show, status: :ok, location: @winepost }
      else
        format.html { render :edit }
        format.json { render json: @winepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wineposts/1
  # DELETE /wineposts/1.json
  def destroy
    @winepost.destroy
    respond_to do |format|
      format.html { redirect_to wineposts_url, notice: 'Winepost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winepost
      @winepost = Winepost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def winepost_params
      params.require(:winepost).permit(:name)
    end
end
