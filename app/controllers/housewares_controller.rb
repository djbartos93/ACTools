class HousewaresController < ApplicationController
  before_action :set_houseware, only: [:show, :edit, :update, :destroy]

  # GET /housewares
  # GET /housewares.json
  def index
    
    respond_to do |format|
      format.html
      format.json { render json: HousewareDatatable.new(params) }
    end
  end

  # GET /housewares/1
  # GET /housewares/1.json
  def show
  end

  # GET /housewares/new
  def new
    @houseware = Houseware.new
  end

  # GET /housewares/1/edit
  def edit
  end

  # POST /housewares
  # POST /housewares.json
  def create
    @houseware = Houseware.new(houseware_params)

    respond_to do |format|
      if @houseware.save
        format.html { redirect_to @houseware, notice: 'Houseware was successfully created.' }
        format.json { render :show, status: :created, location: @houseware }
      else
        format.html { render :new }
        format.json { render json: @houseware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housewares/1
  # PATCH/PUT /housewares/1.json
  def update
    respond_to do |format|
      if @houseware.update(houseware_params)
        format.html { redirect_to @houseware, notice: 'Houseware was successfully updated.' }
        format.json { render :show, status: :ok, location: @houseware }
      else
        format.html { render :edit }
        format.json { render json: @houseware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housewares/1
  # DELETE /housewares/1.json
  def destroy
    @houseware.destroy
    respond_to do |format|
      format.html { redirect_to housewares_url, notice: 'Houseware was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Houseware.my_import(params[:file])
    redirect_to root_url, notice: "Successfully Imported Data!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_houseware
      @houseware = Houseware.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def houseware_params
      params.require(:houseware).permit(:name, :image, :variation, :body_title, :pattern, :diy, :body_customize, :kit_cost, :buy, :sell, :color1, :color2, :size, :source, :source_notes, :version, :hha_concept1, :hha_concept2, :hha_series, :hha_set, :interact, :tag, :speaker_type, :listing_type, :catalog, :filename, :variant_id, :internal_id, :unique_entry_id)
    end
end
