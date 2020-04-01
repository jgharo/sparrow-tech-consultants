class SupportingCompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_supporting_company, only: [:show, :edit, :update, :destroy]

  # GET /supporting_companies
  # GET /supporting_companies.json
  def index
    @supporting_companies = SupportingCompany.all
  end

  # GET /supporting_companies/1
  # GET /supporting_companies/1.json
  def show
  end

  # GET /supporting_companies/new
  def new
    @supporting_company = SupportingCompany.new
  end

  # GET /supporting_companies/1/edit
  def edit
  end

  # POST /supporting_companies
  # POST /supporting_companies.json
  def create
    @supporting_company = SupportingCompany.new(supporting_company_params)

    respond_to do |format|
      if @supporting_company.save
        format.html { redirect_to @supporting_company, notice: 'Supporting company was successfully created.' }
        format.json { render :show, status: :created, location: @supporting_company }
      else
        format.html { render :new }
        format.json { render json: @supporting_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supporting_companies/1
  # PATCH/PUT /supporting_companies/1.json
  def update
    respond_to do |format|
      if @supporting_company.update(supporting_company_params)
        format.html { redirect_to @supporting_company, notice: 'Supporting company was successfully updated.' }
        format.json { render :show, status: :ok, location: @supporting_company }
      else
        format.html { render :edit }
        format.json { render json: @supporting_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supporting_companies/1
  # DELETE /supporting_companies/1.json
  def destroy
    @supporting_company.destroy
    respond_to do |format|
      format.html { redirect_to supporting_companies_url, notice: 'Supporting company was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supporting_company
      @supporting_company = SupportingCompany.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supporting_company_params
      params.require(:supporting_company).permit(:supportingcomp_name, :supportingcomp_email)
    end
end
