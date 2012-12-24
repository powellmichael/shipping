class ShippingLinesController < ApplicationController
  # GET /shipping_lines
  # GET /shipping_lines.json
  def index
    @shipping_lines = ShippingLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @shipping_lines }
    end
  end

  # GET /shipping_lines/1
  # GET /shipping_lines/1.json
  def show
    @shipping_line = ShippingLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @shipping_line }
    end
  end

  # GET /shipping_lines/new
  # GET /shipping_lines/new.json
  def new
    @shipping_line = ShippingLine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @shipping_line }
    end
  end

  # GET /shipping_lines/1/edit
  def edit
    @shipping_line = ShippingLine.find(params[:id])
  end

  # POST /shipping_lines
  # POST /shipping_lines.json
  def create
    @shipping_line = ShippingLine.new(params[:shipping_line])

    respond_to do |format|
      if @shipping_line.save
        format.html { redirect_to @shipping_line, :notice => 'Shipping line was successfully created.' }
        format.json { render :json => @shipping_line, :status => :created, :location => @shipping_line }
      else
        format.html { render :action => "new" }
        format.json { render :json => @shipping_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shipping_lines/1
  # PUT /shipping_lines/1.json
  def update
    @shipping_line = ShippingLine.find(params[:id])

    respond_to do |format|
      if @shipping_line.update_attributes(params[:shipping_line])
        format.html { redirect_to @shipping_line, :notice => 'Shipping line was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @shipping_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_lines/1
  # DELETE /shipping_lines/1.json
  def destroy
    @shipping_line = ShippingLine.find(params[:id])
    @shipping_line.destroy

    respond_to do |format|
      format.html { redirect_to shipping_lines_url }
      format.json { head :no_content }
    end
  end
end
