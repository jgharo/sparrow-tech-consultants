class TransportationsController < ApplicationController
  before_action :set_transportation, only: [:show, :edit, :update, :destroy]

  # GET /transportations
  # GET /transportations.json
  def index
    @transportations = Stlservice.where(servcategory: '1').order(sort_column + " " + sort_direction)
  end

  # GET /transportations/1
  # GET /transportations/1.json
  def show
  end

  # GET /transportations/new
  def new
    @transportation = Transportation.new
  end

  # GET /transportations/1/edit
  def edit
  end

  # POST /transportations
  # POST /transportations.json
  def create
    @transportation = Transportation.new(transportation_params)

    respond_to do |format|
      if @transportation.save
        format.html { redirect_to @transportation, notice: 'Transportation was successfully created.' }
        format.json { render :show, status: :created, location: @transportation }
      else
        format.html { render :new }
        format.json { render json: @transportation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transportations/1
  # PATCH/PUT /transportations/1.json
  def update
    respond_to do |format|
      if @transportation.update(transportation_params)
        format.html { redirect_to @transportation, notice: 'Transportation was successfully updated.' }
        format.json { render :show, status: :ok, location: @transportation }
      else
        format.html { render :edit }
        format.json { render json: @transportation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transportations/1
  # DELETE /transportations/1.json
  def destroy
    @transportation.destroy
    respond_to do |format|
      format.html { redirect_to transportations_url, notice: 'Transportation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transportation
      @transportation = Transportation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transportation_params
      params.require(:transportation).permit(:service_name, :service_description, :service_cost, :servcategory_id, :servstatus_id, :date_modified, :supporting_company_id)
    end
end
