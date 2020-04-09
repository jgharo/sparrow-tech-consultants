class ProductOrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product_order, only: [:show, :edit, :update, :destroy]

  # GET /product_orders
  # GET /product_orders.json
  def index
    @product_orders = ProductOrder.all
  end

  # GET /product_orders/1
  # GET /product_orders/1.json
  def show
  end

  # GET /product_orders/new
  def new
    @product_order = ProductOrder.new
  end

  # GET /product_orders/1/edit
  def edit
  end

  # POST /product_orders
  # POST /product_orders.json
  def create
    @product_order = ProductOrder.new(product_order_params)

    respond_to do |format|
      if @product_order.save
        format.html { redirect_to @product_order, notice: 'Product order was successfully created.' }
        format.json { render :show, status: :created, location: @product_order }
      else
        format.html { render :new }
        format.json { render json: @product_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_orders/1
  # PATCH/PUT /product_orders/1.json
  def update
    respond_to do |format|
      if @product_order.update(product_order_params)
        format.html { redirect_to @product_order, notice: 'Product order was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_order }
      else
        format.html { render :edit }
        format.json { render json: @product_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_orders/1
  # DELETE /product_orders/1.json
  def destroy
    @product_order.destroy
    respond_to do |format|
      format.html { redirect_to product_orders_url, notice: 'Product order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_order
      @product_order = ProductOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_order_params
      params.require(:product_order).permit(:product_quantity, :product_cost_total, :product_id, :invoice_id)
    end
end
