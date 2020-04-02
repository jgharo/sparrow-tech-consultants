class ScpaymentinfosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_scpaymentinfo, only: [:show, :edit, :update, :destroy]

  # GET /scpaymentinfos
  # GET /scpaymentinfos.json
  def index
    @scpaymentinfos = Scpaymentinfo.all
  end

  # GET /scpaymentinfos/1
  # GET /scpaymentinfos/1.json
  def show
  end

  # GET /scpaymentinfos/new
  def new
    @scpaymentinfo = Scpaymentinfo.new
  end

  # GET /scpaymentinfos/1/edit
  def edit
  end

  # POST /scpaymentinfos
  # POST /scpaymentinfos.json
  def create
    @scpaymentinfo = Scpaymentinfo.new(scpaymentinfo_params)

    respond_to do |format|
      if @scpaymentinfo.save
        format.html { redirect_to @scpaymentinfo, notice: 'Scpaymentinfo was successfully created.' }
        format.json { render :show, status: :created, location: @scpaymentinfo }
      else
        format.html { render :new }
        format.json { render json: @scpaymentinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scpaymentinfos/1
  # PATCH/PUT /scpaymentinfos/1.json
  def update
    respond_to do |format|
      if @scpaymentinfo.update(scpaymentinfo_params)
        format.html { redirect_to @scpaymentinfo, notice: 'Scpaymentinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @scpaymentinfo }
      else
        format.html { render :edit }
        format.json { render json: @scpaymentinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scpaymentinfos/1
  # DELETE /scpaymentinfos/1.json
  def destroy
    @scpaymentinfo.destroy
    respond_to do |format|
      format.html { redirect_to scpaymentinfos_url, notice: 'Scpaymentinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scpaymentinfo
      @scpaymentinfo = Scpaymentinfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scpaymentinfo_params
      params.require(:scpaymentinfo).permit(:payment_address, :account_name, :account_number, :routing_number, :aba_number, :swift_code, :supporting_company_id)
    end
end
