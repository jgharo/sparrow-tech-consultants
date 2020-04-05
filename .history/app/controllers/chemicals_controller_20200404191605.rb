class ChemicalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chemical, only: [:show, :edit, :update, :destroy]

  # GET /chemicals
  # GET /chemicals.json 
  helper_method :sort_column, :sort_direction

  def index
    @chemicals = Product.order(sort_column + " " + sort_direction)
  end

  # GET /chemicals/1
  # GET /chemicals/1.json
  def show
  end

  # GET /chemicals/new
  def new
    @chemical = Chemical.new
  end

  # GET /chemicals/1/edit
  def edit
  end

  # POST /chemicals
  # POST /chemicals.json
  def create
    @chemical = Chemical.new(chemical_params)

    respond_to do |format|
      if @chemical.save
        format.html { redirect_to @chemical, notice: 'Chemical was successfully created.' }
        format.json { render :show, status: :created, location: @chemical }
      else
        format.html { render :new }
        format.json { render json: @chemical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chemicals/1
  # PATCH/PUT /chemicals/1.json
  def update
    respond_to do |format|
      if @chemical.update(chemical_params)
        format.html { redirect_to @chemical, notice: 'Chemical was successfully updated.' }
        format.json { render :show, status: :ok, location: @chemical }
      else
        format.html { render :edit }
        format.json { render json: @chemical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chemicals/1
  # DELETE /chemicals/1.json
  def destroy
    @chemical.destroy
    respond_to do |format|
      format.html { redirect_to chemicals_url, notice: 'Chemical was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chemical
      @chemical = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chemical_params
      params.require(:product).permit(:product_name, :product_description, :product_cost, :prodcategory_id, :prodstatus_id, :date_modified, :supplier_id)
    end
    
    def sort_column
      Product.column_names.include?(params[:sort]) ? params[:sort] : "product_name"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
