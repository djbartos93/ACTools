class WallpapersController < ApplicationController
  before_action :set_wallpaper, only: [:show, :edit, :update, :destroy]

  # GET /wallpapers
  # GET /wallpapers.json
  def index
    @wallpapers = Wallpaper.all
  end

  # GET /wallpapers/1
  # GET /wallpapers/1.json
  def show
  end

  # GET /wallpapers/new
  def new
    @wallpaper = Wallpaper.new
  end

  # GET /wallpapers/1/edit
  def edit
  end

  # POST /wallpapers
  # POST /wallpapers.json
  def create
    @wallpaper = Wallpaper.new(wallpaper_params)

    respond_to do |format|
      if @wallpaper.save
        format.html { redirect_to @wallpaper, notice: 'Wallpaper was successfully created.' }
        format.json { render :show, status: :created, location: @wallpaper }
      else
        format.html { render :new }
        format.json { render json: @wallpaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wallpapers/1
  # PATCH/PUT /wallpapers/1.json
  def update
    respond_to do |format|
      if @wallpaper.update(wallpaper_params)
        format.html { redirect_to @wallpaper, notice: 'Wallpaper was successfully updated.' }
        format.json { render :show, status: :ok, location: @wallpaper }
      else
        format.html { render :edit }
        format.json { render json: @wallpaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallpapers/1
  # DELETE /wallpapers/1.json
  def destroy
    @wallpaper.destroy
    respond_to do |format|
      format.html { redirect_to wallpapers_url, notice: 'Wallpaper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallpaper
      @wallpaper = Wallpaper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wallpaper_params
      params.require(:wallpaper).permit(:name, :image, :vfx, :vfx_type, :diy, :buy, :sell, :color_1, :color_2, :source, :source_notes, :catalog, :window_type, :window_color, :pane_type, :curtain, :curtain_color, :celing_type, :hha_concept_1, :hha_concept_2, :tag, :version, :filename, :internal_id, :unique_entry_id)
    end
end
