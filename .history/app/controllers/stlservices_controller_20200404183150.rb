class StlservicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_stlservice, only: [:show, :edit, :update, :destroy]

  # GET /stlservices
  # GET /stlservices.json
  helper_method :sort_column, :sort_direction

  def index
    @stlservices = Stlservice.all
  end

  # GET /stlservices/1
  # GET /stlservices/1.json
  def show
  end

  # GET /stlservices/new
  def new
    @stlservice = Stlservice.new
  end

  # GET /stlservices/1/edit
  def edit
  end

  # POST /stlservices
  # POST /stlservices.json
  def create
    @stlservice = Stlservice.new(stlservice_params)

    respond_to do |format|
      if @stlservice.save
        format.html { redirect_to @stlservice, notice: 'Stlservice was successfully created.' }
        format.json { render :show, status: :created, location: @stlservice }
      else
        format.html { render :new }
        format.json { render json: @stlservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stlservices/1
  # PATCH/PUT /stlservices/1.json
  def update
    respond_to do |format|
      if @stlservice.update(stlservice_params)
        format.html { redirect_to @stlservice, notice: 'Stlservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @stlservice }
      else
        format.html { render :edit }
        format.json { render json: @stlservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stlservices/1
  # DELETE /stlservices/1.json
  def destroy
    @stlservice.destroy
    respond_to do |format|
      format.html { redirect_to stlservices_url, notice: 'Stlservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stlservice
      @stlservice = Stlservice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stlservice_params
      params.require(:stlservice).permit(:service_name, :service_description, :service_cost, :servcategory_id, :servstatus_id, :date_modified, :supporting_company_id)
    end

  def sort_column
    Stlservice.column_names.include?(params[:sort]) ? params[:sort] : "service_name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
