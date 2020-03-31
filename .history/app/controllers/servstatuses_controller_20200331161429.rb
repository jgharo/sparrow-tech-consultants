class ServstatusesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_servstatus, only: [:show, :edit, :update, :destroy]

  # GET /servstatuses
  # GET /servstatuses.json
  def index
    @servstatuses = Servstatus.all
  end

  # GET /servstatuses/1
  # GET /servstatuses/1.json
  def show
  end

  # GET /servstatuses/new
  def new
    @servstatus = Servstatus.new
  end

  # GET /servstatuses/1/edit
  def edit
  end

  # POST /servstatuses
  # POST /servstatuses.json
  def create
    @servstatus = Servstatus.new(servstatus_params)

    respond_to do |format|
      if @servstatus.save
        format.html { redirect_to @servstatus, notice: 'Servstatus was successfully created.' }
        format.json { render :show, status: :created, location: @servstatus }
      else
        format.html { render :new }
        format.json { render json: @servstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servstatuses/1
  # PATCH/PUT /servstatuses/1.json
  def update
    respond_to do |format|
      if @servstatus.update(servstatus_params)
        format.html { redirect_to @servstatus, notice: 'Servstatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @servstatus }
      else
        format.html { render :edit }
        format.json { render json: @servstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servstatuses/1
  # DELETE /servstatuses/1.json
  def destroy
    @servstatus.destroy
    respond_to do |format|
      format.html { redirect_to servstatuses_url, notice: 'Servstatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servstatus
      @servstatus = Servstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servstatus_params
      params.require(:servstatus).permit(:status)
    end
end
