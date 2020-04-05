class ProdstatusesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_prodstatus, only: [:show, :edit, :update, :destroy]

  # GET /prodstatuses
  # GET /prodstatuses.json
  def index
    @prodstatuses = Prodstatus.all
  end

  # GET /prodstatuses/1
  # GET /prodstatuses/1.json
  def show
  end

  # GET /prodstatuses/new
  def new
    @prodstatus = Prodstatus.new
  end

  # GET /prodstatuses/1/edit
  def edit
  end

  # POST /prodstatuses
  # POST /prodstatuses.json
  def create
    @prodstatus = Prodstatus.new(prodstatus_params)

    respond_to do |format|
      if @prodstatus.save
        format.html { redirect_to @prodstatus, notice: 'Status was successfully created.' }
        format.json { render :show, status: :created, location: @prodstatus }
      else
        format.html { render :new }
        format.json { render json: @prodstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodstatuses/1
  # PATCH/PUT /prodstatuses/1.json
  def update
    respond_to do |format|
      if @prodstatus.update(prodstatus_params)
        format.html { redirect_to @prodstatus, notice: 'Status was successfully updated.' }
        format.json { render :show, status: :ok, location: @prodstatus }
      else
        format.html { render :edit }
        format.json { render json: @prodstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodstatuses/1
  # DELETE /prodstatuses/1.json
  def destroy
    @prodstatus.destroy
    respond_to do |format|
      format.html { redirect_to prodstatuses_url, notice: 'Status was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodstatus
      @prodstatus = Prodstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prodstatus_params
      params.require(:prodstatus).permit(:status)
    end
end
