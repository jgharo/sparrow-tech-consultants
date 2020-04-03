class TransportationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_transportation, only: [:show, :edit, :update, :destroy]

  # GET /transportations
  # GET /transportations.json
  def index
    @stlservices = Stlservice.all
  end

  # GET /transportations/1
  # GET /transportations/1.json
  def show
  end

  # GET /transportations/new
  def new
    @stlservice = Stlservice.new
  end

  # GET /transportations/1/edit
  def edit
  end

  # POST /transportations
  # POST /transportations.json
  def create
    @stlservice = Stlservice.new(stlservice_params)

    respond_to do |format|
      if @stlservice.save
        format.html { redirect_to @stlservice, notice: 'Transportation was successfully created.' }
        format.json { render :show, status: :created, location: @stlservice }
      else
        format.html { render :new }
        format.json { render json: @stlservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transportations/1
  # PATCH/PUT /transportations/1.json
  def update
    respond_to do |format|
      if @stlservice.update(stlservice_params)
        format.html { redirect_to @stlservice, notice: 'Transportation was successfully updated.' }
        format.json { render :show, status: :ok, location: @stlservice }
      else
        format.html { render :edit }
        format.json { render json: @stlservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transportations/1
  # DELETE /transportations/1.json
  def destroy
    @stlservice.destroy
    respond_to do |format|
      format.html { redirect_to stlservices_url, notice: 'Transportation was successfully deleted.' }
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
