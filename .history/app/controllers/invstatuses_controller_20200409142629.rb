class InvstatusesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_invstatus, only: [:show, :edit, :update, :destroy]

  # GET /invstatuses
  # GET /invstatuses.json
  def index
    @invstatuses = Invstatus.all
  end

  # GET /invstatuses/1
  # GET /invstatuses/1.json
  def show
  end

  # GET /invstatuses/new
  def new
    @invstatus = Invstatus.new
  end

  # GET /invstatuses/1/edit
  def edit
  end

  # POST /invstatuses
  # POST /invstatuses.json
  def create
    @invstatus = Invstatus.new(invstatus_params)

    respond_to do |format|
      if @invstatus.save
        format.html { redirect_to @invstatus, notice: 'Invstatus was successfully created.' }
        format.json { render :show, status: :created, location: @invstatus }
      else
        format.html { render :new }
        format.json { render json: @invstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invstatuses/1
  # PATCH/PUT /invstatuses/1.json
  def update
    respond_to do |format|
      if @invstatus.update(invstatus_params)
        format.html { redirect_to @invstatus, notice: 'Invstatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @invstatus }
      else
        format.html { render :edit }
        format.json { render json: @invstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invstatuses/1
  # DELETE /invstatuses/1.json
  def destroy
    @invstatus.destroy
    respond_to do |format|
      format.html { redirect_to invstatuses_url, notice: 'Invstatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invstatus
      @invstatus = Invstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invstatus_params
      params.require(:invstatus).permit(:status)
    end
end
