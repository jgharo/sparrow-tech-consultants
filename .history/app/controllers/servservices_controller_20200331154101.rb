class ServservicesController < ApplicationController
  before_action :set_servservice, only: [:show, :edit, :update, :destroy]

  # GET /servservices
  # GET /servservices.json
  def index
    @servservices = Servservice.all
  end

  # GET /servservices/1
  # GET /servservices/1.json
  def show
  end

  # GET /servservices/new
  def new
    @servservice = Servservice.new
  end

  # GET /servservices/1/edit
  def edit
  end

  # POST /servservices
  # POST /servservices.json
  def create
    @servservice = Servservice.new(servservice_params)

    respond_to do |format|
      if @servservice.save
        format.html { redirect_to @servservice, notice: 'Servservice was successfully created.' }
        format.json { render :show, status: :created, location: @servservice }
      else
        format.html { render :new }
        format.json { render json: @servservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servservices/1
  # PATCH/PUT /servservices/1.json
  def update
    respond_to do |format|
      if @servservice.update(servservice_params)
        format.html { redirect_to @servservice, notice: 'Servservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @servservice }
      else
        format.html { render :edit }
        format.json { render json: @servservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servservices/1
  # DELETE /servservices/1.json
  def destroy
    @servservice.destroy
    respond_to do |format|
      format.html { redirect_to servservices_url, notice: 'Servservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servservice
      @servservice = Servservice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servservice_params
      params.require(:servservice).permit(:service)
    end
end
