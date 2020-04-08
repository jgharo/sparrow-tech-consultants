class SupplierpaymentinfosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_supplierpaymentinfo, only: [:show, :edit, :update, :destroy]

  # GET /supplierpaymentinfos
  # GET /supplierpaymentinfos.json
  def index
    @supplierpaymentinfos = Supplierpaymentinfo.all
  end

  # GET /supplierpaymentinfos/1
  # GET /supplierpaymentinfos/1.json
  def show
  end

  # GET /supplierpaymentinfos/new
  def new
    @supplierpaymentinfo = Supplierpaymentinfo.new
  end

  # GET /supplierpaymentinfos/1/edit
  def edit
  end

  # POST /supplierpaymentinfos
  # POST /supplierpaymentinfos.json
  def create
    @supplierpaymentinfo = Supplierpaymentinfo.new(supplierpaymentinfo_params)

    respond_to do |format|
      if @supplierpaymentinfo.save
        format.html { redirect_to @supplierpaymentinfo, notice: 'Supplierpaymentinfo was successfully created.' }
        format.json { render :show, status: :created, location: @supplierpaymentinfo }
      else
        format.html { render :new }
        format.json { render json: @supplierpaymentinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplierpaymentinfos/1
  # PATCH/PUT /supplierpaymentinfos/1.json
  def update
    respond_to do |format|
      if @supplierpaymentinfo.update(supplierpaymentinfo_params)
        format.html { redirect_to @supplierpaymentinfo, notice: 'Supplierpaymentinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplierpaymentinfo }
      else
        format.html { render :edit }
        format.json { render json: @supplierpaymentinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplierpaymentinfos/1
  # DELETE /supplierpaymentinfos/1.json
  def destroy
    @supplierpaymentinfo.destroy
    respond_to do |format|
      format.html { redirect_to supplierpaymentinfos_url, notice: 'Supplierpaymentinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplierpaymentinfo
      @supplierpaymentinfo = Supplierpaymentinfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supplierpaymentinfo_params
      params.require(:supplierpaymentinfo).permit(:payment_address, :account_name, :account_number, :routing_number, :supplier_id)
    end
end
