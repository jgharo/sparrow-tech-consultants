class SCompanyPaymentInfosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_s_company_payment_info, only: [:show, :edit, :update, :destroy]

  # GET /s_company_payment_infos
  # GET /s_company_payment_infos.json
  def index
    @s_company_payment_infos = SCompanyPaymentInfo.all
  end

  # GET /s_company_payment_infos/1
  # GET /s_company_payment_infos/1.json
  def show
  end

  # GET /s_company_payment_infos/new
  def new
    @s_company_payment_info = SCompanyPaymentInfo.new
  end

  # GET /s_company_payment_infos/1/edit
  def edit
  end

  # POST /s_company_payment_infos
  # POST /s_company_payment_infos.json
  def create
    @s_company_payment_info = SCompanyPaymentInfo.new(s_company_payment_info_params)

    respond_to do |format|
      if @s_company_payment_info.save
        format.html { redirect_to @s_company_payment_info, notice: 'S company payment info was successfully created.' }
        format.json { render :show, status: :created, location: @s_company_payment_info }
      else
        format.html { render :new }
        format.json { render json: @s_company_payment_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /s_company_payment_infos/1
  # PATCH/PUT /s_company_payment_infos/1.json
  def update
    respond_to do |format|
      if @s_company_payment_info.update(s_company_payment_info_params)
        format.html { redirect_to @s_company_payment_info, notice: 'S company payment info was successfully updated.' }
        format.json { render :show, status: :ok, location: @s_company_payment_info }
      else
        format.html { render :edit }
        format.json { render json: @s_company_payment_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /s_company_payment_infos/1
  # DELETE /s_company_payment_infos/1.json
  def destroy
    @s_company_payment_info.destroy
    respond_to do |format|
      format.html { redirect_to s_company_payment_infos_url, notice: 'S company payment info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_s_company_payment_info
      @s_company_payment_info = SCompanyPaymentInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def s_company_payment_info_params
      params.require(:s_company_payment_info).permit(:payment_address, :account_name, :account_number, :routing_number, :aba_number, :swift_code)
    end
end
