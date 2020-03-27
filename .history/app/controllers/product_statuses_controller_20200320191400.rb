class ProductStatusesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product_status, only: [:show, :edit, :update, :destroy]

  # GET /product_statuses
  # GET /product_statuses.json
  def index
    @product_statuses = ProductStatus.all
  end

  # GET /product_statuses/1
  # GET /product_statuses/1.json
  def show
  end

  # GET /product_statuses/new
  def new
    @product_status = ProductStatus.new
  end

  # GET /product_statuses/1/edit
  def edit
  end

  # POST /product_statuses
  # POST /product_statuses.json
  def create
    @product_status = ProductStatus.new(product_status_params)

    respond_to do |format|
      if @product_status.save
        format.html { redirect_to @product_status, notice: 'Product status was successfully created.' }
        format.json { render :show, status: :created, location: @product_status }
      else
        format.html { render :new }
        format.json { render json: @product_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_statuses/1
  # PATCH/PUT /product_statuses/1.json
  def update
    respond_to do |format|
      if @product_status.update(product_status_params)
        format.html { redirect_to @product_status, notice: 'Product status was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_status }
      else
        format.html { render :edit }
        format.json { render json: @product_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_statuses/1
  # DELETE /product_statuses/1.json
  def destroy
    @product_status.destroy
    respond_to do |format|
      format.html { redirect_to product_statuses_url, notice: 'Product status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_status
      @product_status = ProductStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_status_params
      params.require(:product_status).permit(:product_status)
    end
end
