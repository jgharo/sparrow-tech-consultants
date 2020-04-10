class InvoicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_invoice, only: [:show, :edit, :update, :destroy]

  # GET /invoices
  # GET /invoices.json
  def index
    @search = Invoice.search(params[:q])
    @invoices = @search.result.includes(:stlclient, :invstatus)
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
    #respond_to do |format|
     # format.html
      #format.pdf do
       # render :pdf =>"invoice_#{@invoice.id}", :template => 'invoices/show.html.erb'

       # Generate PDF
       pdf = WickedPdf.new.pdf_from_string(
         render_to_string('invoices/show.html.erb.pdf')
       )

       pdf_invoice = Invoice.new(
        # Other attributes here as well.....
        invoice: StringIO.new(pdf) # Pipe pdf to quote
      )
      pdf_invoice.quote_file_name = "Invoice.pdf"
      pdf_invoice.save
      end
    end
  end

  # GET /invoices/new
  def new
    @invoice = Invoice.new
  end

  # GET /invoices/1/edit
  def edit
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to @invoice, notice: 'Invoice was successfully created.' }
        format.json { render :show, status: :created, location: @invoice }
      else
        format.html { render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to @invoice, notice: 'Invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice.destroy
    respond_to do |format|
      format.html { redirect_to invoices_url, notice: 'Invoice was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_params
      params.require(:invoice).permit(:date_updated, :invstatus_id, :stlclient_id, product_orders_attributes:[:id, :product_quantity, :product_cost_total, :product_id, :_destroy], service_orders_attributes:[:id, :service_quantity, :service_cost_total, :stlservice_id, :_destroy], taxes_attributes:[:id, :name, :rate, :_destory], notes_attributes:[:id, :comment, :date_updated, :_destroy])
    end
end
