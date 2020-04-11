class TransportationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_transportation, only: [:show, :edit, :update, :destroy]

  # GET /transportations
  # GET /transportations.json


  def index
    @search = Stlservice.search(params[:q])
    @transportations = @search.result.where(servcategory: '1').includes(:supporting_company, :servcategory, :servstatus)

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf =>"transportation_catalogue", :template => 'layouts/transportation.pdf.erb',
               layout: 'layouts/application.html.erb', disposition: 'attachment'
      end
    end

  end

  # GET /transportations/1
  # GET /transportations/1.json
  def show
  end

  # GET /transportations/new
  def new
    @transportation = Stlservice.new
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
      format.html { redirect_to transportations_url, notice: 'Transportation was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transportation
      @transportation = Stlservice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transportation_params
      params.require(:stlservice).permit(:service_name, :service_description, :service_cost, :servcategory_id, :servstatus_id, :date_modified, :supporting_company_id)
    end

end
