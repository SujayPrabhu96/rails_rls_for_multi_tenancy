class SkusController < ApplicationController
  before_action :set_sku, only: %i[ show edit update destroy ]

  # GET /skus or /skus.json
  def index
    @skus = Sku.all
  end

  # GET /skus/1 or /skus/1.json
  def show
  end

  # GET /skus/new
  def new
    @sku = Sku.new
  end

  # GET /skus/1/edit
  def edit
  end

  # POST /skus or /skus.json
  def create
    @sku = Sku.new(sku_params)

    respond_to do |format|
      if @sku.save
        format.html { redirect_to sku_url(@sku), notice: "Sku was successfully created." }
        format.json { render :show, status: :created, location: @sku }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skus/1 or /skus/1.json
  def update
    respond_to do |format|
      if @sku.update(sku_params)
        format.html { redirect_to sku_url(@sku), notice: "Sku was successfully updated." }
        format.json { render :show, status: :ok, location: @sku }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skus/1 or /skus/1.json
  def destroy
    @sku.destroy!

    respond_to do |format|
      format.html { redirect_to skus_url, notice: "Sku was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sku
      @sku = Sku.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sku_params
      params.require(:sku).permit(:name, :description, :tenant_id)
    end
end
