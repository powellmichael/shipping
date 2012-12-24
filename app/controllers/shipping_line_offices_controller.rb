class ShippingLineOfficesController < ApplicationController
  # GET /shipping_line_offices
  # GET /shipping_line_offices.json
  def index
    @shipping_line_offices = ShippingLineOffice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @shipping_line_offices }
    end
  end

  # GET /shipping_line_offices/1
  # GET /shipping_line_offices/1.json
  def show
    @shipping_line_office = ShippingLineOffice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @shipping_line_office }
    end
  end

  # GET /shipping_line_offices/new
  # GET /shipping_line_offices/new.json
  def new
    @shipping_line_office = ShippingLineOffice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @shipping_line_office }
    end
  end

  # GET /shipping_line_offices/1/edit
  def edit
    @shipping_line_office = ShippingLineOffice.find(params[:id])
  end

  # POST /shipping_line_offices
  # POST /shipping_line_offices.json
  def create
    @shipping_line_office = ShippingLineOffice.new(params[:shipping_line_office])

    respond_to do |format|
      if @shipping_line_office.save
        format.html { redirect_to @shipping_line_office, :notice => 'Shipping line office was successfully created.' }
        format.json { render :json => @shipping_line_office, :status => :created, :location => @shipping_line_office }
      else
        format.html { render :action => "new" }
        format.json { render :json => @shipping_line_office.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shipping_line_offices/1
  # PUT /shipping_line_offices/1.json
  def update
    @shipping_line_office = ShippingLineOffice.find(params[:id])

    respond_to do |format|
      if @shipping_line_office.update_attributes(params[:shipping_line_office])
        format.html { redirect_to @shipping_line_office, :notice => 'Shipping line office was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @shipping_line_office.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_line_offices/1
  # DELETE /shipping_line_offices/1.json
  def destroy
    @shipping_line_office = ShippingLineOffice.find(params[:id])
    @shipping_line_office.destroy

    respond_to do |format|
      format.html { redirect_to shipping_line_offices_url }
      format.json { head :no_content }
    end
  end
end
