class Order::PurchaseOrdersController < ApplicationController
  before_action :set_order_purchase_order, only: %i[ show edit update destroy ]

  # GET /order/purchase_orders or /order/purchase_orders.json
  def index
    @order_purchase_orders = Order::PurchaseOrder.all
  end

  # GET /order/purchase_orders/1 or /order/purchase_orders/1.json
  def show
  end

  # GET /order/purchase_orders/new
  def new
    @order_purchase_order = Order::PurchaseOrder.new
  end

  # GET /order/purchase_orders/1/edit
  def edit
  end

  # POST /order/purchase_orders or /order/purchase_orders.json
  def create
    @order_purchase_order = Order::PurchaseOrder.new(order_purchase_order_params)

    respond_to do |format|
      if @order_purchase_order.save
        format.html { redirect_to order_purchase_order_url(@order_purchase_order), notice: "Purchase order was successfully created." }
        format.json { render :show, status: :created, location: @order_purchase_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_purchase_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order/purchase_orders/1 or /order/purchase_orders/1.json
  def update
    respond_to do |format|
      if @order_purchase_order.update(order_purchase_order_params)
        format.html { redirect_to order_purchase_order_url(@order_purchase_order), notice: "Purchase order was successfully updated." }
        format.json { render :show, status: :ok, location: @order_purchase_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_purchase_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order/purchase_orders/1 or /order/purchase_orders/1.json
  def destroy
    @order_purchase_order.destroy!

    respond_to do |format|
      format.html { redirect_to order_purchase_orders_url, notice: "Purchase order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_purchase_order
      @order_purchase_order = Order::PurchaseOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_purchase_order_params
      params.require(:order_purchase_order).permit(:order_number, :external_order_id, :po_type, :status, :business_unit, :order_date, :receipt_date, :estimated_lpn, :tenant_id)
    end
end
