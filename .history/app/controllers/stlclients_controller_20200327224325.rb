class StlclientsController < ApplicationController
  before_action :set_stlclient, only: [:show, :edit, :update, :destroy]

  # GET /stlclients
  # GET /stlclients.json
  def index
    @stlclients = Stlclient.all
  end

  # GET /stlclients/1
  # GET /stlclients/1.json
  def show
  end

  # GET /stlclients/new
  def new
    @stlclient = Stlclient.new
  end

  # GET /stlclients/1/edit
  def edit
  end

  # POST /stlclients
  # POST /stlclients.json
  def create
    @stlclient = Stlclient.new(stlclient_params)

    respond_to do |format|
      if @stlclient.save
        format.html { redirect_to @stlclient, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @stlclient }
      else
        format.html { render :new }
        format.json { render json: @stlclient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stlclients/1
  # PATCH/PUT /stlclients/1.json
  def update
    respond_to do |format|
      if @stlclient.update(stlclient_params)
        format.html { redirect_to @stlclient, notice: 'Stlclient was successfully updated.' }
        format.json { render :show, status: :ok, location: @stlclient }
      else
        format.html { render :edit }
        format.json { render json: @stlclient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stlclients/1
  # DELETE /stlclients/1.json
  def destroy
    @stlclient.destroy
    respond_to do |format|
      format.html { redirect_to stlclients_url, notice: 'Stlclient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stlclient
      @stlclient = Stlclient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stlclient_params
      params.require(:stlclient).permit(:client_fname, :client_lname, :client_email, :client_phonenumber, :client_companyname, :client_shippingaddress, :client_billingaddress, :employee_id)
    end
end
