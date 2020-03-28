class ProdcategoriesController < ApplicationController
  before_action :set_prodcategory, only: [:show, :edit, :update, :destroy]

  # GET /prodcategories
  # GET /prodcategories.json
  def index
    @prodcategories = Prodcategory.all
  end

  # GET /prodcategories/1
  # GET /prodcategories/1.json
  def show
  end

  # GET /prodcategories/new
  def new
    @prodcategory = Prodcategory.new
  end

  # GET /prodcategories/1/edit
  def edit
  end

  # POST /prodcategories
  # POST /prodcategories.json
  def create
    @prodcategory = Prodcategory.new(prodcategory_params)

    respond_to do |format|
      if @prodcategory.save
        format.html { redirect_to @prodcategory, notice: 'Prodcategory was successfully created.' }
        format.json { render :show, status: :created, location: @prodcategory }
      else
        format.html { render :new }
        format.json { render json: @prodcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodcategories/1
  # PATCH/PUT /prodcategories/1.json
  def update
    respond_to do |format|
      if @prodcategory.update(prodcategory_params)
        format.html { redirect_to @prodcategory, notice: 'Prodcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @prodcategory }
      else
        format.html { render :edit }
        format.json { render json: @prodcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodcategories/1
  # DELETE /prodcategories/1.json
  def destroy
    @prodcategory.destroy
    respond_to do |format|
      format.html { redirect_to prodcategories_url, notice: 'Prodcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodcategory
      @prodcategory = Prodcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prodcategory_params
      params.require(:prodcategory).permit(:category)
    end
end
