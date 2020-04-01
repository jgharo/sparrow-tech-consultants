class ServcategoriesController < ApplicationController
  before_action :set_servcategory, only: [:show, :edit, :update, :destroy]

  # GET /servcategories
  # GET /servcategories.json
  def index
    @servcategories = Servcategory.all
  end

  # GET /servcategories/1
  # GET /servcategories/1.json
  def show
  end

  # GET /servcategories/new
  def new
    @servcategory = Servcategory.new
  end

  # GET /servcategories/1/edit
  def edit
  end

  # POST /servcategories
  # POST /servcategories.json
  def create
    @servcategory = Servcategory.new(servcategory_params)

    respond_to do |format|
      if @servcategory.save
        format.html { redirect_to @servcategory, notice: 'Servcategory was successfully created.' }
        format.json { render :show, status: :created, location: @servcategory }
      else
        format.html { render :new }
        format.json { render json: @servcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servcategories/1
  # PATCH/PUT /servcategories/1.json
  def update
    respond_to do |format|
      if @servcategory.update(servcategory_params)
        format.html { redirect_to @servcategory, notice: 'Servcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @servcategory }
      else
        format.html { render :edit }
        format.json { render json: @servcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servcategories/1
  # DELETE /servcategories/1.json
  def destroy
    @servcategory.destroy
    respond_to do |format|
      format.html { redirect_to servcategories_url, notice: 'Servcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servcategory
      @servcategory = Servcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servcategory_params
      params.require(:servcategory).permit(:category)
    end
end
