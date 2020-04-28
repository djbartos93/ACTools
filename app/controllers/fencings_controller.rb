class FencingsController < ApplicationController
  before_action :set_fencing, only: [:show, :edit, :update, :destroy]

  # GET /fencings
  # GET /fencings.json
  def index
    @fencings = Fencing.all
  end

  # GET /fencings/1
  # GET /fencings/1.json
  def show
  end

  # GET /fencings/new
  def new
    @fencing = Fencing.new
  end

  # GET /fencings/1/edit
  def edit
  end

  # POST /fencings
  # POST /fencings.json
  def create
    @fencing = Fencing.new(fencing_params)

    respond_to do |format|
      if @fencing.save
        format.html { redirect_to @fencing, notice: 'Fencing was successfully created.' }
        format.json { render :show, status: :created, location: @fencing }
      else
        format.html { render :new }
        format.json { render json: @fencing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fencings/1
  # PATCH/PUT /fencings/1.json
  def update
    respond_to do |format|
      if @fencing.update(fencing_params)
        format.html { redirect_to @fencing, notice: 'Fencing was successfully updated.' }
        format.json { render :show, status: :ok, location: @fencing }
      else
        format.html { render :edit }
        format.json { render json: @fencing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fencings/1
  # DELETE /fencings/1.json
  def destroy
    @fencing.destroy
    respond_to do |format|
      format.html { redirect_to fencings_url, notice: 'Fencing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fencing
      @fencing = Fencing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fencing_params
      params.require(:fencing).permit(:name, :image, :diy, :buy, :sell, :source, :source_notes, :version, :filename, :internal_id, :unique_entry_id)
    end
end
