class ProdCategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_prod_category, only: [:show, :edit, :update, :destroy]

  # GET /prod_categories
  # GET /prod_categories.json
  def index
    @prod_categories = ProdCategory.all
  end

  # GET /prod_categories/1
  # GET /prod_categories/1.json
  def show
  end

  # GET /prod_categories/new
  def new
    @prod_category = ProdCategory.new
  end

  # GET /prod_categories/1/edit
  def edit
  end

  # POST /prod_categories
  # POST /prod_categories.json
  def create
    @prod_category = ProdCategory.new(prod_category_params)

    respond_to do |format|
      if @prod_category.save
        format.html { redirect_to @prod_category, notice: 'Prod category was successfully created.' }
        format.json { render :show, status: :created, location: @prod_category }
      else
        format.html { render :new }
        format.json { render json: @prod_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prod_categories/1
  # PATCH/PUT /prod_categories/1.json
  def update
    respond_to do |format|
      if @prod_category.update(prod_category_params)
        format.html { redirect_to @prod_category, notice: 'Prod category was successfully updated.' }
        format.json { render :show, status: :ok, location: @prod_category }
      else
        format.html { render :edit }
        format.json { render json: @prod_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prod_categories/1
  # DELETE /prod_categories/1.json
  def destroy
    @prod_category.destroy
    respond_to do |format|
      format.html { redirect_to prod_categories_url, notice: 'Prod category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prod_category
      @prod_category = ProdCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prod_category_params
      params.require(:prod_category).permit(:prod_category)
    end
end
