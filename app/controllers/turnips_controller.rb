class TurnipsController < ApplicationController
  before_action :set_turnip, only: [:show, :edit, :update, :destroy]

  # GET /turnips
  # GET /turnips.json
  def index
    @turnips = Turnip.all
  end

  # GET /turnips/1
  # GET /turnips/1.json
  def show

  end

  def calc_spent(amount, cost)
    @bells_spent = amount * cost
    puts @bells_spent
    return @bells_spent
  end
  helper_method :calc_spent

  def calc_total(amount, saleprice)
    @bells_total = amount * saleprice
    puts @bells_total
    return @bells_total
  end
  helper_method :calc_total

  # GET /turnips/new
  def new
    @turnip = Turnip.new
  end

  # GET /turnips/1/edit
  def edit
  end

  # POST /turnips
  # POST /turnips.json
  def create
    @turnip = Turnip.new(turnip_params)

    respond_to do |format|
      if @turnip.save
        format.html { redirect_to @turnip, notice: 'Turnip was successfully created.' }
        format.json { render :show, status: :created, location: @turnip }
      else
        format.html { render :new }
        format.json { render json: @turnip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turnips/1
  # PATCH/PUT /turnips/1.json
  def update
    respond_to do |format|
      if @turnip.update(turnip_params)
        format.html { redirect_to @turnip, notice: 'Turnip was successfully updated.' }
        format.json { render :show, status: :ok, location: @turnip }
      else
        format.html { render :edit }
        format.json { render json: @turnip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turnips/1
  # DELETE /turnips/1.json
  def destroy
    @turnip.destroy
    respond_to do |format|
      format.html { redirect_to turnips_url, notice: 'Turnip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turnip
      @turnip = Turnip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def turnip_params
      params.require(:turnip).permit(:purchasePrice, :amountPurchased, :salePrice, :spentBells, :madeBells, :week, :tap_link)
    end
end
