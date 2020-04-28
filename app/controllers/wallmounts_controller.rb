class WallmountsController < ApplicationController
  before_action :set_wallmount, only: [:show, :edit, :update, :destroy]

  # GET /wallmounts
  # GET /wallmounts.json
  def index
    @wallmounts = Wallmount.all
  end

  # GET /wallmounts/1
  # GET /wallmounts/1.json
  def show
  end

  # GET /wallmounts/new
  def new
    @wallmount = Wallmount.new
  end

  # GET /wallmounts/1/edit
  def edit
  end

  # POST /wallmounts
  # POST /wallmounts.json
  def create
    @wallmount = Wallmount.new(wallmount_params)

    respond_to do |format|
      if @wallmount.save
        format.html { redirect_to @wallmount, notice: 'Wallmount was successfully created.' }
        format.json { render :show, status: :created, location: @wallmount }
      else
        format.html { render :new }
        format.json { render json: @wallmount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wallmounts/1
  # PATCH/PUT /wallmounts/1.json
  def update
    respond_to do |format|
      if @wallmount.update(wallmount_params)
        format.html { redirect_to @wallmount, notice: 'Wallmount was successfully updated.' }
        format.json { render :show, status: :ok, location: @wallmount }
      else
        format.html { render :edit }
        format.json { render json: @wallmount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallmounts/1
  # DELETE /wallmounts/1.json
  def destroy
    @wallmount.destroy
    respond_to do |format|
      format.html { redirect_to wallmounts_url, notice: 'Wallmount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallmount
      @wallmount = Wallmount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wallmount_params
      params.require(:wallmount).permit(:name, :images, :variation, :body_title, :pattern, :pattern_title, :diy, :body_customize, :pattern_customize, :kit_cost, :buy, :sell, :color_1, :color_2, :size, :source, :source_notes, :version, :hha_concept_1, :hha_concept_2, :hha_series, :hha_set, :interact, :tag, :door_deco, :lighting_type, :catalog, :filename, :variant_id, :internal_id, :unieue_entry_id)
    end
end
