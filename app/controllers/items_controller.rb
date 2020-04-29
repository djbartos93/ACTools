class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "wallpapers") }
    end
  end


  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Item.my_import(params[:file])
    redirect_to items_url, notice: "Successfully Imported Data!"
  end

  def wall_mounted
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "wall-mounted") }
    end
  end

  def wallpaper
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "wallpapers") }
    end
  end

  def floor
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "floors") }
    end
  end

  def rug
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "rugs") }
    end
  end

  def fencing
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "fencing") }
    end
  end

  def photo
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "photos") }
    end
  end

  def poster
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "posters") }
    end
  end

  def tool
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "tools") }
    end
  end

  def clothes_top
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "tops") }
    end
  end

  def clothes_bottom
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "bottoms") }
    end
  end

  def clothes_dresse
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "dresses") }
    end
  end

  def headware
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "headware") }
    end
  end

  def accessories
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "accessories") }
    end
  end

  def sock
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "sock") }
    end
  end

  def shoe
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "shoes") }
    end
  end

  def bag
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "bags") }
    end
  end

  def umbreslla
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "umbrellas") }
    end
  end

  def music
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "music") }
    end
  end

  def art
    respond_to do |format|
      format.html
      format.json { render json: ItemDatatable.new(params, category: "art") }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :image, :variation, :body_title, :pattern, :pattern_title, :diy, :body_customize, :pattern_customize, :kit_cost, :buy, :sell, :color_1, :color_2, :size, :source, :source_notes, :version, :hha_concept_1, :hha_concept_2, :hha_series, :hha_set, :interact, :tag, :tag, :speaker_type, :lighting_type, :catalog, :filename, :variant_id, :internal_id, :door_deco, :vfx, :vfx_type, :window_type, :window_color, :pane_type, :curtain_type, :curtain_color, :ceiling_type, :set, :uses, :closet_image, :storage_image, :label_themes, :primary_shape, :secondary_shape, :framed_image, :album_image, :high_res_texture, :genuine, :category)
    end
end
