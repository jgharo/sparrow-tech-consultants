class ProdStatusesController < ApplicationController
  before_action :set_prod_status, only: [:show, :edit, :update, :destroy]

  # GET /prod_statuses
  # GET /prod_statuses.json
  def index
    @prod_statuses = ProdStatus.all
  end

  # GET /prod_statuses/1
  # GET /prod_statuses/1.json
  def show
  end

  # GET /prod_statuses/new
  def new
    @prod_status = ProdStatus.new
  end

  # GET /prod_statuses/1/edit
  def edit
  end

  # POST /prod_statuses
  # POST /prod_statuses.json
  def create
    @prod_status = ProdStatus.new(prod_status_params)

    respond_to do |format|
      if @prod_status.save
        format.html { redirect_to @prod_status, notice: 'Prod status was successfully created.' }
        format.json { render :show, status: :created, location: @prod_status }
      else
        format.html { render :new }
        format.json { render json: @prod_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prod_statuses/1
  # PATCH/PUT /prod_statuses/1.json
  def update
    respond_to do |format|
      if @prod_status.update(prod_status_params)
        format.html { redirect_to @prod_status, notice: 'Prod status was successfully updated.' }
        format.json { render :show, status: :ok, location: @prod_status }
      else
        format.html { render :edit }
        format.json { render json: @prod_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prod_statuses/1
  # DELETE /prod_statuses/1.json
  def destroy
    @prod_status.destroy
    respond_to do |format|
      format.html { redirect_to prod_statuses_url, notice: 'Prod status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prod_status
      @prod_status = ProdStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prod_status_params
      params.require(:prod_status).permit(:prod_status)
    end
end
